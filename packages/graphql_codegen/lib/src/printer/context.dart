import 'package:code_builder/code_builder.dart';
import 'package:path/path.dart' as path;
import '../context.dart';

final p = path.Context(style: path.Style.posix);

class _Value<TValue> {
  TValue value;

  _Value(this.value);
}

class _Package {
  final String import;
  final String? alias;

  _Package(this.import, this.alias);

  operator ==(Object other) =>
      other is _Package && other.alias == alias && other.import == import;

  @override
  int get hashCode => import.hashCode & alias.hashCode;
}

class PrintContext<TContext extends Context> {
  final TContext context;
  final _Value<bool> _jsonSerializable;
  final Set<String> _dependencies;
  final Set<_Package> _packages;
  final Set<String> _badScalars;
  final Map<String, Spec> _converters;

  Iterable<Spec> get converters => _converters.values;

  Iterable<Directive> get directives {
    final currentFile = context.filePath;
    final currentPath = p.dirname(currentFile);
    final imports = [
      ..._packages.map((e) => Directive.import(e.import, as: e.alias)),
      ..._dependencies
          .where((element) => element != currentFile)
          .map((e) => Directive.import(p.relative(e, from: currentPath))),
    ];
    imports.sort((e1, e2) => e1.url.compareTo(e2.url));
    return [
      ...imports,
      if (_jsonSerializable.value)
        Directive.part(p.basenameWithoutExtension(currentFile) + ".g.dart"),
    ];
  }

  factory PrintContext(TContext context) => PrintContext._(
        context,
        _Value(false),
        {},
        {},
        {},
        {},
      );

  PrintContext._(
    this.context,
    _Value<bool> jsonSerializable,
    Set<String> dependencies,
    Set<_Package> packages,
    Set<String> badScalars,
    Map<String, Spec> converters,
  )   : this._jsonSerializable = jsonSerializable,
        this._dependencies = dependencies,
        this._packages = packages,
        this._badScalars = badScalars,
        this._converters = converters;

  PrintContext<TNewContext> withContext<TNewContext extends Context>(
    TNewContext context,
  ) =>
      PrintContext._(
        context,
        _jsonSerializable,
        _dependencies,
        _packages,
        _badScalars,
        _converters,
      );

  Name get path => context.path;

  void markAsJsonSerializable() {
    _jsonSerializable.value = true;
  }

  void addDependency(Name name) {
    final lookupPath =
        context.schema.lookupPathFromName(name.baseNameSegment.name);
    if (lookupPath == null) return;
    _dependencies.add(lookupPath);
  }

  void addDependencies(Iterable<Name> names) {
    for (final name in names) {
      addDependency(name);
    }
  }

  void addPackage(String import, [String? alias]) {
    _packages.add(_Package(import, alias));
  }

  void addConverters(Map<String, Spec> converters) {
    _converters.addAll(converters);
  }

  void markScalarAsBad(String name) {
    _badScalars.add(name);
  }

  void printWarnings() {
    for (final scalar in _badScalars) {
      print("Missing scalar ${scalar}. Defaulting to String");
    }
  }
}
