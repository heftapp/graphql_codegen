import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$NoVariables {
  Fragment$NoVariables({this.s});

  factory Fragment$NoVariables.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Fragment$NoVariables(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$NoVariables) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$NoVariables on Fragment$NoVariables {
  CopyWith$Fragment$NoVariables<Fragment$NoVariables> get copyWith =>
      CopyWith$Fragment$NoVariables(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$NoVariables<TRes> {
  factory CopyWith$Fragment$NoVariables(
    Fragment$NoVariables instance,
    TRes Function(Fragment$NoVariables) then,
  ) = _CopyWithImpl$Fragment$NoVariables;

  factory CopyWith$Fragment$NoVariables.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NoVariables;

  TRes call({String? s});
}

class _CopyWithImpl$Fragment$NoVariables<TRes>
    implements CopyWith$Fragment$NoVariables<TRes> {
  _CopyWithImpl$Fragment$NoVariables(
    this._instance,
    this._then,
  );

  final Fragment$NoVariables _instance;

  final TRes Function(Fragment$NoVariables) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(
      Fragment$NoVariables(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Fragment$NoVariables<TRes>
    implements CopyWith$Fragment$NoVariables<TRes> {
  _CopyWithStubImpl$Fragment$NoVariables(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const fragmentDefinitionNoVariables = FragmentDefinitionNode(
  name: NameNode(value: 'NoVariables'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Query'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 's'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'name'),
          value: StringValueNode(
            value: 'name',
            isBlock: false,
          ),
        )
      ],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentNoVariables = DocumentNode(definitions: [
  fragmentDefinitionNoVariables,
]);

extension ClientExtension$Fragment$NoVariables on graphql.GraphQLClient {
  void writeFragment$NoVariables({
    required Fragment$NoVariables data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'NoVariables',
            document: documentNodeFragmentNoVariables,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$NoVariables? readFragment$NoVariables({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'NoVariables',
          document: documentNodeFragmentNoVariables,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$NoVariables.fromJson(result);
  }
}

class Variables$Fragment$WithOptionalVariables {
  factory Variables$Fragment$WithOptionalVariables({String? name}) =>
      Variables$Fragment$WithOptionalVariables._({
        if (name != null) r'name': name,
      });

  Variables$Fragment$WithOptionalVariables._(this._$data);

  factory Variables$Fragment$WithOptionalVariables.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Fragment$WithOptionalVariables._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Fragment$WithOptionalVariables<
          Variables$Fragment$WithOptionalVariables>
      get copyWith => CopyWith$Variables$Fragment$WithOptionalVariables(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$WithOptionalVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Fragment$WithOptionalVariables<TRes> {
  factory CopyWith$Variables$Fragment$WithOptionalVariables(
    Variables$Fragment$WithOptionalVariables instance,
    TRes Function(Variables$Fragment$WithOptionalVariables) then,
  ) = _CopyWithImpl$Variables$Fragment$WithOptionalVariables;

  factory CopyWith$Variables$Fragment$WithOptionalVariables.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$WithOptionalVariables;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Fragment$WithOptionalVariables<TRes>
    implements CopyWith$Variables$Fragment$WithOptionalVariables<TRes> {
  _CopyWithImpl$Variables$Fragment$WithOptionalVariables(
    this._instance,
    this._then,
  );

  final Variables$Fragment$WithOptionalVariables _instance;

  final TRes Function(Variables$Fragment$WithOptionalVariables) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Fragment$WithOptionalVariables._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$WithOptionalVariables<TRes>
    implements CopyWith$Variables$Fragment$WithOptionalVariables<TRes> {
  _CopyWithStubImpl$Variables$Fragment$WithOptionalVariables(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$WithOptionalVariables {
  Fragment$WithOptionalVariables({this.s});

  factory Fragment$WithOptionalVariables.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Fragment$WithOptionalVariables(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$WithOptionalVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WithOptionalVariables
    on Fragment$WithOptionalVariables {
  CopyWith$Fragment$WithOptionalVariables<Fragment$WithOptionalVariables>
      get copyWith => CopyWith$Fragment$WithOptionalVariables(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$WithOptionalVariables<TRes> {
  factory CopyWith$Fragment$WithOptionalVariables(
    Fragment$WithOptionalVariables instance,
    TRes Function(Fragment$WithOptionalVariables) then,
  ) = _CopyWithImpl$Fragment$WithOptionalVariables;

  factory CopyWith$Fragment$WithOptionalVariables.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WithOptionalVariables;

  TRes call({String? s});
}

class _CopyWithImpl$Fragment$WithOptionalVariables<TRes>
    implements CopyWith$Fragment$WithOptionalVariables<TRes> {
  _CopyWithImpl$Fragment$WithOptionalVariables(
    this._instance,
    this._then,
  );

  final Fragment$WithOptionalVariables _instance;

  final TRes Function(Fragment$WithOptionalVariables) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(Fragment$WithOptionalVariables(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Fragment$WithOptionalVariables<TRes>
    implements CopyWith$Fragment$WithOptionalVariables<TRes> {
  _CopyWithStubImpl$Fragment$WithOptionalVariables(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const fragmentDefinitionWithOptionalVariables = FragmentDefinitionNode(
  name: NameNode(value: 'WithOptionalVariables'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Query'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 's'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'name'),
          value: VariableNode(name: NameNode(value: 'name')),
        )
      ],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentWithOptionalVariables = DocumentNode(definitions: [
  fragmentDefinitionWithOptionalVariables,
]);

extension ClientExtension$Fragment$WithOptionalVariables
    on graphql.GraphQLClient {
  void writeFragment$WithOptionalVariables({
    required Fragment$WithOptionalVariables data,
    required Map<String, dynamic> idFields,
    Variables$Fragment$WithOptionalVariables? variables,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'WithOptionalVariables',
            document: documentNodeFragmentWithOptionalVariables,
          ),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$WithOptionalVariables? readFragment$WithOptionalVariables({
    required Map<String, dynamic> idFields,
    Variables$Fragment$WithOptionalVariables? variables,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'WithOptionalVariables',
          document: documentNodeFragmentWithOptionalVariables,
        ),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$WithOptionalVariables.fromJson(result);
  }
}

class Variables$Fragment$WithVariables {
  factory Variables$Fragment$WithVariables({required String name}) =>
      Variables$Fragment$WithVariables._({
        r'name': name,
      });

  Variables$Fragment$WithVariables._(this._$data);

  factory Variables$Fragment$WithVariables.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Fragment$WithVariables._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Fragment$WithVariables<Variables$Fragment$WithVariables>
      get copyWith => CopyWith$Variables$Fragment$WithVariables(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$WithVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Fragment$WithVariables<TRes> {
  factory CopyWith$Variables$Fragment$WithVariables(
    Variables$Fragment$WithVariables instance,
    TRes Function(Variables$Fragment$WithVariables) then,
  ) = _CopyWithImpl$Variables$Fragment$WithVariables;

  factory CopyWith$Variables$Fragment$WithVariables.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$WithVariables;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Fragment$WithVariables<TRes>
    implements CopyWith$Variables$Fragment$WithVariables<TRes> {
  _CopyWithImpl$Variables$Fragment$WithVariables(
    this._instance,
    this._then,
  );

  final Variables$Fragment$WithVariables _instance;

  final TRes Function(Variables$Fragment$WithVariables) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Fragment$WithVariables._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$WithVariables<TRes>
    implements CopyWith$Variables$Fragment$WithVariables<TRes> {
  _CopyWithStubImpl$Variables$Fragment$WithVariables(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$WithVariables {
  Fragment$WithVariables({this.s2});

  factory Fragment$WithVariables.fromJson(Map<String, dynamic> json) {
    final l$s2 = json['s2'];
    return Fragment$WithVariables(s2: (l$s2 as String?));
  }

  final String? s2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s2 = s2;
    _resultData['s2'] = l$s2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s2 = s2;
    return Object.hashAll([l$s2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$WithVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s2 = s2;
    final lOther$s2 = other.s2;
    if (l$s2 != lOther$s2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WithVariables on Fragment$WithVariables {
  CopyWith$Fragment$WithVariables<Fragment$WithVariables> get copyWith =>
      CopyWith$Fragment$WithVariables(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WithVariables<TRes> {
  factory CopyWith$Fragment$WithVariables(
    Fragment$WithVariables instance,
    TRes Function(Fragment$WithVariables) then,
  ) = _CopyWithImpl$Fragment$WithVariables;

  factory CopyWith$Fragment$WithVariables.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WithVariables;

  TRes call({String? s2});
}

class _CopyWithImpl$Fragment$WithVariables<TRes>
    implements CopyWith$Fragment$WithVariables<TRes> {
  _CopyWithImpl$Fragment$WithVariables(
    this._instance,
    this._then,
  );

  final Fragment$WithVariables _instance;

  final TRes Function(Fragment$WithVariables) _then;

  static const _undefined = {};

  TRes call({Object? s2 = _undefined}) => _then(Fragment$WithVariables(
      s2: s2 == _undefined ? _instance.s2 : (s2 as String?)));
}

class _CopyWithStubImpl$Fragment$WithVariables<TRes>
    implements CopyWith$Fragment$WithVariables<TRes> {
  _CopyWithStubImpl$Fragment$WithVariables(this._res);

  TRes _res;

  call({String? s2}) => _res;
}

const fragmentDefinitionWithVariables = FragmentDefinitionNode(
  name: NameNode(value: 'WithVariables'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Query'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 's2'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'name'),
          value: VariableNode(name: NameNode(value: 'name')),
        )
      ],
      directives: [],
      selectionSet: null,
    )
  ]),
);
const documentNodeFragmentWithVariables = DocumentNode(definitions: [
  fragmentDefinitionWithVariables,
]);

extension ClientExtension$Fragment$WithVariables on graphql.GraphQLClient {
  void writeFragment$WithVariables({
    required Fragment$WithVariables data,
    required Map<String, dynamic> idFields,
    required Variables$Fragment$WithVariables variables,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'WithVariables',
            document: documentNodeFragmentWithVariables,
          ),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$WithVariables? readFragment$WithVariables({
    required Map<String, dynamic> idFields,
    required Variables$Fragment$WithVariables variables,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'WithVariables',
          document: documentNodeFragmentWithVariables,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$WithVariables.fromJson(result);
  }
}

class Variables$Query$FetchSOptional {
  factory Variables$Query$FetchSOptional({String? name}) =>
      Variables$Query$FetchSOptional._({
        if (name != null) r'name': name,
      });

  Variables$Query$FetchSOptional._(this._$data);

  factory Variables$Query$FetchSOptional.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Query$FetchSOptional._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FetchSOptional<Variables$Query$FetchSOptional>
      get copyWith => CopyWith$Variables$Query$FetchSOptional(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchSOptional) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FetchSOptional<TRes> {
  factory CopyWith$Variables$Query$FetchSOptional(
    Variables$Query$FetchSOptional instance,
    TRes Function(Variables$Query$FetchSOptional) then,
  ) = _CopyWithImpl$Variables$Query$FetchSOptional;

  factory CopyWith$Variables$Query$FetchSOptional.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchSOptional;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$FetchSOptional<TRes>
    implements CopyWith$Variables$Query$FetchSOptional<TRes> {
  _CopyWithImpl$Variables$Query$FetchSOptional(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchSOptional _instance;

  final TRes Function(Variables$Query$FetchSOptional) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$FetchSOptional._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchSOptional<TRes>
    implements CopyWith$Variables$Query$FetchSOptional<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchSOptional(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$FetchSOptional {
  Query$FetchSOptional({this.s});

  factory Query$FetchSOptional.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Query$FetchSOptional(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchSOptional) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchSOptional on Query$FetchSOptional {
  CopyWith$Query$FetchSOptional<Query$FetchSOptional> get copyWith =>
      CopyWith$Query$FetchSOptional(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSOptional<TRes> {
  factory CopyWith$Query$FetchSOptional(
    Query$FetchSOptional instance,
    TRes Function(Query$FetchSOptional) then,
  ) = _CopyWithImpl$Query$FetchSOptional;

  factory CopyWith$Query$FetchSOptional.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSOptional;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSOptional<TRes>
    implements CopyWith$Query$FetchSOptional<TRes> {
  _CopyWithImpl$Query$FetchSOptional(
    this._instance,
    this._then,
  );

  final Query$FetchSOptional _instance;

  final TRes Function(Query$FetchSOptional) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(
      Query$FetchSOptional(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Query$FetchSOptional<TRes>
    implements CopyWith$Query$FetchSOptional<TRes> {
  _CopyWithStubImpl$Query$FetchSOptional(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeQueryFetchSOptional = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSOptional'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Query$FetchSOptional _parserFn$Query$FetchSOptional(
        Map<String, dynamic> data) =>
    Query$FetchSOptional.fromJson(data);

class Options$Query$FetchSOptional
    extends graphql.QueryOptions<Query$FetchSOptional> {
  Options$Query$FetchSOptional({
    String? operationName,
    Variables$Query$FetchSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchSOptional,
          parserFn: _parserFn$Query$FetchSOptional,
        );
}

class WatchOptions$Query$FetchSOptional
    extends graphql.WatchQueryOptions<Query$FetchSOptional> {
  WatchOptions$Query$FetchSOptional({
    String? operationName,
    Variables$Query$FetchSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchSOptional,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchSOptional,
        );
}

class FetchMoreOptions$Query$FetchSOptional extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSOptional({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchSOptional? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchSOptional,
        );
}

extension ClientExtension$Query$FetchSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSOptional>> query$FetchSOptional(
          [Options$Query$FetchSOptional? options]) async =>
      await this.query(options ?? Options$Query$FetchSOptional());
  graphql.ObservableQuery<Query$FetchSOptional> watchQuery$FetchSOptional(
          [WatchOptions$Query$FetchSOptional? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSOptional());
  void writeQuery$FetchSOptional({
    required Query$FetchSOptional data,
    Variables$Query$FetchSOptional? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchSOptional),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchSOptional? readQuery$FetchSOptional({
    Variables$Query$FetchSOptional? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchSOptional),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchSOptional.fromJson(result);
  }
}

class Variables$Query$FetchSRequired {
  factory Variables$Query$FetchSRequired({required String name}) =>
      Variables$Query$FetchSRequired._({
        r'name': name,
      });

  Variables$Query$FetchSRequired._(this._$data);

  factory Variables$Query$FetchSRequired.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$FetchSRequired._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$FetchSRequired<Variables$Query$FetchSRequired>
      get copyWith => CopyWith$Variables$Query$FetchSRequired(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchSRequired) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Query$FetchSRequired<TRes> {
  factory CopyWith$Variables$Query$FetchSRequired(
    Variables$Query$FetchSRequired instance,
    TRes Function(Variables$Query$FetchSRequired) then,
  ) = _CopyWithImpl$Variables$Query$FetchSRequired;

  factory CopyWith$Variables$Query$FetchSRequired.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchSRequired;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$FetchSRequired<TRes>
    implements CopyWith$Variables$Query$FetchSRequired<TRes> {
  _CopyWithImpl$Variables$Query$FetchSRequired(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchSRequired _instance;

  final TRes Function(Variables$Query$FetchSRequired) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$FetchSRequired._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchSRequired<TRes>
    implements CopyWith$Variables$Query$FetchSRequired<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchSRequired(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$FetchSRequired {
  Query$FetchSRequired({this.s});

  factory Query$FetchSRequired.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Query$FetchSRequired(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchSRequired) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchSRequired on Query$FetchSRequired {
  CopyWith$Query$FetchSRequired<Query$FetchSRequired> get copyWith =>
      CopyWith$Query$FetchSRequired(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSRequired<TRes> {
  factory CopyWith$Query$FetchSRequired(
    Query$FetchSRequired instance,
    TRes Function(Query$FetchSRequired) then,
  ) = _CopyWithImpl$Query$FetchSRequired;

  factory CopyWith$Query$FetchSRequired.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSRequired;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSRequired<TRes>
    implements CopyWith$Query$FetchSRequired<TRes> {
  _CopyWithImpl$Query$FetchSRequired(
    this._instance,
    this._then,
  );

  final Query$FetchSRequired _instance;

  final TRes Function(Query$FetchSRequired) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(
      Query$FetchSRequired(s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Query$FetchSRequired<TRes>
    implements CopyWith$Query$FetchSRequired<TRes> {
  _CopyWithStubImpl$Query$FetchSRequired(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeQueryFetchSRequired = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSRequired'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Query$FetchSRequired _parserFn$Query$FetchSRequired(
        Map<String, dynamic> data) =>
    Query$FetchSRequired.fromJson(data);

class Options$Query$FetchSRequired
    extends graphql.QueryOptions<Query$FetchSRequired> {
  Options$Query$FetchSRequired({
    String? operationName,
    required Variables$Query$FetchSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchSRequired,
          parserFn: _parserFn$Query$FetchSRequired,
        );
}

class WatchOptions$Query$FetchSRequired
    extends graphql.WatchQueryOptions<Query$FetchSRequired> {
  WatchOptions$Query$FetchSRequired({
    String? operationName,
    required Variables$Query$FetchSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchSRequired,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchSRequired,
        );
}

class FetchMoreOptions$Query$FetchSRequired extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSRequired({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchSRequired variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchSRequired,
        );
}

extension ClientExtension$Query$FetchSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSRequired>> query$FetchSRequired(
          Options$Query$FetchSRequired options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchSRequired> watchQuery$FetchSRequired(
          WatchOptions$Query$FetchSRequired options) =>
      this.watchQuery(options);
  void writeQuery$FetchSRequired({
    required Query$FetchSRequired data,
    required Variables$Query$FetchSRequired variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchSRequired),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchSRequired? readQuery$FetchSRequired({
    required Variables$Query$FetchSRequired variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchSRequired),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchSRequired.fromJson(result);
  }
}

class Query$FetchSNoVariables {
  Query$FetchSNoVariables({this.s});

  factory Query$FetchSNoVariables.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Query$FetchSNoVariables(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchSNoVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchSNoVariables on Query$FetchSNoVariables {
  CopyWith$Query$FetchSNoVariables<Query$FetchSNoVariables> get copyWith =>
      CopyWith$Query$FetchSNoVariables(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSNoVariables<TRes> {
  factory CopyWith$Query$FetchSNoVariables(
    Query$FetchSNoVariables instance,
    TRes Function(Query$FetchSNoVariables) then,
  ) = _CopyWithImpl$Query$FetchSNoVariables;

  factory CopyWith$Query$FetchSNoVariables.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSNoVariables;

  TRes call({String? s});
}

class _CopyWithImpl$Query$FetchSNoVariables<TRes>
    implements CopyWith$Query$FetchSNoVariables<TRes> {
  _CopyWithImpl$Query$FetchSNoVariables(
    this._instance,
    this._then,
  );

  final Query$FetchSNoVariables _instance;

  final TRes Function(Query$FetchSNoVariables) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(Query$FetchSNoVariables(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Query$FetchSNoVariables<TRes>
    implements CopyWith$Query$FetchSNoVariables<TRes> {
  _CopyWithStubImpl$Query$FetchSNoVariables(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeQueryFetchSNoVariables = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSNoVariables'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: StringValueNode(
              value: 'lol',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Query$FetchSNoVariables _parserFn$Query$FetchSNoVariables(
        Map<String, dynamic> data) =>
    Query$FetchSNoVariables.fromJson(data);

class Options$Query$FetchSNoVariables
    extends graphql.QueryOptions<Query$FetchSNoVariables> {
  Options$Query$FetchSNoVariables({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchSNoVariables,
          parserFn: _parserFn$Query$FetchSNoVariables,
        );
}

class WatchOptions$Query$FetchSNoVariables
    extends graphql.WatchQueryOptions<Query$FetchSNoVariables> {
  WatchOptions$Query$FetchSNoVariables({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchSNoVariables,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchSNoVariables,
        );
}

class FetchMoreOptions$Query$FetchSNoVariables
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchSNoVariables(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchSNoVariables,
        );
}

extension ClientExtension$Query$FetchSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchSNoVariables>> query$FetchSNoVariables(
          [Options$Query$FetchSNoVariables? options]) async =>
      await this.query(options ?? Options$Query$FetchSNoVariables());
  graphql.ObservableQuery<Query$FetchSNoVariables> watchQuery$FetchSNoVariables(
          [WatchOptions$Query$FetchSNoVariables? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchSNoVariables());
  void writeQuery$FetchSNoVariables({
    required Query$FetchSNoVariables data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchSNoVariables)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchSNoVariables? readQuery$FetchSNoVariables(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchSNoVariables)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchSNoVariables.fromJson(result);
  }
}

class Variables$Mutation$UpdateSOptional {
  factory Variables$Mutation$UpdateSOptional({String? name}) =>
      Variables$Mutation$UpdateSOptional._({
        if (name != null) r'name': name,
      });

  Variables$Mutation$UpdateSOptional._(this._$data);

  factory Variables$Mutation$UpdateSOptional.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Mutation$UpdateSOptional._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateSOptional<
          Variables$Mutation$UpdateSOptional>
      get copyWith => CopyWith$Variables$Mutation$UpdateSOptional(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateSOptional) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateSOptional<TRes> {
  factory CopyWith$Variables$Mutation$UpdateSOptional(
    Variables$Mutation$UpdateSOptional instance,
    TRes Function(Variables$Mutation$UpdateSOptional) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSOptional;

  factory CopyWith$Variables$Mutation$UpdateSOptional.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateSOptional;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Variables$Mutation$UpdateSOptional<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSOptional(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateSOptional _instance;

  final TRes Function(Variables$Mutation$UpdateSOptional) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Mutation$UpdateSOptional._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Variables$Mutation$UpdateSOptional<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSOptional(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Mutation$UpdateSOptional {
  Mutation$UpdateSOptional({this.s});

  factory Mutation$UpdateSOptional.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Mutation$UpdateSOptional(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateSOptional) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSOptional
    on Mutation$UpdateSOptional {
  CopyWith$Mutation$UpdateSOptional<Mutation$UpdateSOptional> get copyWith =>
      CopyWith$Mutation$UpdateSOptional(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSOptional<TRes> {
  factory CopyWith$Mutation$UpdateSOptional(
    Mutation$UpdateSOptional instance,
    TRes Function(Mutation$UpdateSOptional) then,
  ) = _CopyWithImpl$Mutation$UpdateSOptional;

  factory CopyWith$Mutation$UpdateSOptional.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSOptional;

  TRes call({String? s});
}

class _CopyWithImpl$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Mutation$UpdateSOptional<TRes> {
  _CopyWithImpl$Mutation$UpdateSOptional(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSOptional _instance;

  final TRes Function(Mutation$UpdateSOptional) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(Mutation$UpdateSOptional(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Mutation$UpdateSOptional<TRes>
    implements CopyWith$Mutation$UpdateSOptional<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSOptional(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeMutationUpdateSOptional = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateSOptional'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$UpdateSOptional _parserFn$Mutation$UpdateSOptional(
        Map<String, dynamic> data) =>
    Mutation$UpdateSOptional.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSOptional = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateSOptional?,
);

class Options$Mutation$UpdateSOptional
    extends graphql.MutationOptions<Mutation$UpdateSOptional> {
  Options$Mutation$UpdateSOptional({
    String? operationName,
    Variables$Mutation$UpdateSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSOptional? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSOptional>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateSOptional(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSOptional,
          parserFn: _parserFn$Mutation$UpdateSOptional,
        );

  final OnMutationCompleted$Mutation$UpdateSOptional? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateSOptional
    extends graphql.WatchQueryOptions<Mutation$UpdateSOptional> {
  WatchOptions$Mutation$UpdateSOptional({
    String? operationName,
    Variables$Mutation$UpdateSOptional? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateSOptional,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateSOptional,
        );
}

extension ClientExtension$Mutation$UpdateSOptional on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSOptional>> mutate$UpdateSOptional(
          [Options$Mutation$UpdateSOptional? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateSOptional());
  graphql
      .ObservableQuery<Mutation$UpdateSOptional> watchMutation$UpdateSOptional(
          [WatchOptions$Mutation$UpdateSOptional? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateSOptional());
}

class Variables$Mutation$UpdateSRequired {
  factory Variables$Mutation$UpdateSRequired({required String name}) =>
      Variables$Mutation$UpdateSRequired._({
        r'name': name,
      });

  Variables$Mutation$UpdateSRequired._(this._$data);

  factory Variables$Mutation$UpdateSRequired.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Mutation$UpdateSRequired._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateSRequired<
          Variables$Mutation$UpdateSRequired>
      get copyWith => CopyWith$Variables$Mutation$UpdateSRequired(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateSRequired) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateSRequired<TRes> {
  factory CopyWith$Variables$Mutation$UpdateSRequired(
    Variables$Mutation$UpdateSRequired instance,
    TRes Function(Variables$Mutation$UpdateSRequired) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSRequired;

  factory CopyWith$Variables$Mutation$UpdateSRequired.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateSRequired;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Variables$Mutation$UpdateSRequired<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSRequired(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateSRequired _instance;

  final TRes Function(Variables$Mutation$UpdateSRequired) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Mutation$UpdateSRequired._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Variables$Mutation$UpdateSRequired<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSRequired(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Mutation$UpdateSRequired {
  Mutation$UpdateSRequired({this.s});

  factory Mutation$UpdateSRequired.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Mutation$UpdateSRequired(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateSRequired) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSRequired
    on Mutation$UpdateSRequired {
  CopyWith$Mutation$UpdateSRequired<Mutation$UpdateSRequired> get copyWith =>
      CopyWith$Mutation$UpdateSRequired(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSRequired<TRes> {
  factory CopyWith$Mutation$UpdateSRequired(
    Mutation$UpdateSRequired instance,
    TRes Function(Mutation$UpdateSRequired) then,
  ) = _CopyWithImpl$Mutation$UpdateSRequired;

  factory CopyWith$Mutation$UpdateSRequired.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSRequired;

  TRes call({String? s});
}

class _CopyWithImpl$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Mutation$UpdateSRequired<TRes> {
  _CopyWithImpl$Mutation$UpdateSRequired(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSRequired _instance;

  final TRes Function(Mutation$UpdateSRequired) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(Mutation$UpdateSRequired(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Mutation$UpdateSRequired<TRes>
    implements CopyWith$Mutation$UpdateSRequired<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSRequired(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeMutationUpdateSRequired = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateSRequired'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$UpdateSRequired _parserFn$Mutation$UpdateSRequired(
        Map<String, dynamic> data) =>
    Mutation$UpdateSRequired.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSRequired = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateSRequired?,
);

class Options$Mutation$UpdateSRequired
    extends graphql.MutationOptions<Mutation$UpdateSRequired> {
  Options$Mutation$UpdateSRequired({
    String? operationName,
    required Variables$Mutation$UpdateSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSRequired? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSRequired>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateSRequired(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSRequired,
          parserFn: _parserFn$Mutation$UpdateSRequired,
        );

  final OnMutationCompleted$Mutation$UpdateSRequired? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateSRequired
    extends graphql.WatchQueryOptions<Mutation$UpdateSRequired> {
  WatchOptions$Mutation$UpdateSRequired({
    String? operationName,
    required Variables$Mutation$UpdateSRequired variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateSRequired,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateSRequired,
        );
}

extension ClientExtension$Mutation$UpdateSRequired on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSRequired>> mutate$UpdateSRequired(
          Options$Mutation$UpdateSRequired options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateSRequired>
      watchMutation$UpdateSRequired(
              WatchOptions$Mutation$UpdateSRequired options) =>
          this.watchMutation(options);
}

class Mutation$UpdateSNoVariables {
  Mutation$UpdateSNoVariables({this.s});

  factory Mutation$UpdateSNoVariables.fromJson(Map<String, dynamic> json) {
    final l$s = json['s'];
    return Mutation$UpdateSNoVariables(s: (l$s as String?));
  }

  final String? s;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$s = s;
    _resultData['s'] = l$s;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$s = s;
    return Object.hashAll([l$s]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateSNoVariables) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$s = s;
    final lOther$s = other.s;
    if (l$s != lOther$s) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSNoVariables
    on Mutation$UpdateSNoVariables {
  CopyWith$Mutation$UpdateSNoVariables<Mutation$UpdateSNoVariables>
      get copyWith => CopyWith$Mutation$UpdateSNoVariables(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateSNoVariables<TRes> {
  factory CopyWith$Mutation$UpdateSNoVariables(
    Mutation$UpdateSNoVariables instance,
    TRes Function(Mutation$UpdateSNoVariables) then,
  ) = _CopyWithImpl$Mutation$UpdateSNoVariables;

  factory CopyWith$Mutation$UpdateSNoVariables.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSNoVariables;

  TRes call({String? s});
}

class _CopyWithImpl$Mutation$UpdateSNoVariables<TRes>
    implements CopyWith$Mutation$UpdateSNoVariables<TRes> {
  _CopyWithImpl$Mutation$UpdateSNoVariables(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSNoVariables _instance;

  final TRes Function(Mutation$UpdateSNoVariables) _then;

  static const _undefined = {};

  TRes call({Object? s = _undefined}) => _then(Mutation$UpdateSNoVariables(
      s: s == _undefined ? _instance.s : (s as String?)));
}

class _CopyWithStubImpl$Mutation$UpdateSNoVariables<TRes>
    implements CopyWith$Mutation$UpdateSNoVariables<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSNoVariables(this._res);

  TRes _res;

  call({String? s}) => _res;
}

const documentNodeMutationUpdateSNoVariables = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateSNoVariables'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 's'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: StringValueNode(
              value: 'lol',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$UpdateSNoVariables _parserFn$Mutation$UpdateSNoVariables(
        Map<String, dynamic> data) =>
    Mutation$UpdateSNoVariables.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateSNoVariables = FutureOr<void>
    Function(
  dynamic,
  Mutation$UpdateSNoVariables?,
);

class Options$Mutation$UpdateSNoVariables
    extends graphql.MutationOptions<Mutation$UpdateSNoVariables> {
  Options$Mutation$UpdateSNoVariables({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateSNoVariables? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateSNoVariables>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateSNoVariables(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateSNoVariables,
          parserFn: _parserFn$Mutation$UpdateSNoVariables,
        );

  final OnMutationCompleted$Mutation$UpdateSNoVariables? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateSNoVariables
    extends graphql.WatchQueryOptions<Mutation$UpdateSNoVariables> {
  WatchOptions$Mutation$UpdateSNoVariables({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateSNoVariables,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateSNoVariables,
        );
}

extension ClientExtension$Mutation$UpdateSNoVariables on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateSNoVariables>>
      mutate$UpdateSNoVariables(
              [Options$Mutation$UpdateSNoVariables? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateSNoVariables());
  graphql.ObservableQuery<
      Mutation$UpdateSNoVariables> watchMutation$UpdateSNoVariables(
          [WatchOptions$Mutation$UpdateSNoVariables? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateSNoVariables());
}

const possibleTypesMap = {};
