import 'package:gql/ast.dart';

class Fragment$Condition {
  Fragment$Condition({
    required this.name,
    required this.$__typename,
  });

  factory Fragment$Condition.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AndCondition":
        return Fragment$Condition$$AndCondition.fromJson(json);

      case "TimeCondition":
        return Fragment$Condition$$TimeCondition.fromJson(json);

      default:
        final l$name = json['name'];
        final l$$__typename = json['__typename'];
        return Fragment$Condition(
          name: (l$name as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Condition) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Condition on Fragment$Condition {
  CopyWith$Fragment$Condition<Fragment$Condition> get copyWith =>
      CopyWith$Fragment$Condition(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Fragment$Condition$$AndCondition) andCondition,
    required _T Function(Fragment$Condition$$TimeCondition) timeCondition,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AndCondition":
        return andCondition(this as Fragment$Condition$$AndCondition);

      case "TimeCondition":
        return timeCondition(this as Fragment$Condition$$TimeCondition);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$Condition$$AndCondition)? andCondition,
    _T Function(Fragment$Condition$$TimeCondition)? timeCondition,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AndCondition":
        if (andCondition != null) {
          return andCondition(this as Fragment$Condition$$AndCondition);
        } else {
          return orElse();
        }

      case "TimeCondition":
        if (timeCondition != null) {
          return timeCondition(this as Fragment$Condition$$TimeCondition);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$Condition<TRes> {
  factory CopyWith$Fragment$Condition(
    Fragment$Condition instance,
    TRes Function(Fragment$Condition) then,
  ) = _CopyWithImpl$Fragment$Condition;

  factory CopyWith$Fragment$Condition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Condition;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Condition<TRes>
    implements CopyWith$Fragment$Condition<TRes> {
  _CopyWithImpl$Fragment$Condition(
    this._instance,
    this._then,
  );

  final Fragment$Condition _instance;

  final TRes Function(Fragment$Condition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Condition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Condition<TRes>
    implements CopyWith$Fragment$Condition<TRes> {
  _CopyWithStubImpl$Fragment$Condition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionCondition = FragmentDefinitionNode(
  name: NameNode(value: 'Condition'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Condition'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCondition = DocumentNode(definitions: [
  fragmentDefinitionCondition,
]);

class Fragment$Condition$$AndCondition implements Fragment$Condition {
  Fragment$Condition$$AndCondition({
    required this.name,
    this.$__typename = 'AndCondition',
  });

  factory Fragment$Condition$$AndCondition.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$Condition$$AndCondition(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Condition$$AndCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Condition$$AndCondition
    on Fragment$Condition$$AndCondition {
  CopyWith$Fragment$Condition$$AndCondition<Fragment$Condition$$AndCondition>
      get copyWith => CopyWith$Fragment$Condition$$AndCondition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Condition$$AndCondition<TRes> {
  factory CopyWith$Fragment$Condition$$AndCondition(
    Fragment$Condition$$AndCondition instance,
    TRes Function(Fragment$Condition$$AndCondition) then,
  ) = _CopyWithImpl$Fragment$Condition$$AndCondition;

  factory CopyWith$Fragment$Condition$$AndCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Condition$$AndCondition;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Condition$$AndCondition<TRes>
    implements CopyWith$Fragment$Condition$$AndCondition<TRes> {
  _CopyWithImpl$Fragment$Condition$$AndCondition(
    this._instance,
    this._then,
  );

  final Fragment$Condition$$AndCondition _instance;

  final TRes Function(Fragment$Condition$$AndCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Condition$$AndCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Condition$$AndCondition<TRes>
    implements CopyWith$Fragment$Condition$$AndCondition<TRes> {
  _CopyWithStubImpl$Fragment$Condition$$AndCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Condition$$TimeCondition implements Fragment$Condition {
  Fragment$Condition$$TimeCondition({
    required this.name,
    this.$__typename = 'TimeCondition',
  });

  factory Fragment$Condition$$TimeCondition.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$Condition$$TimeCondition(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Condition$$TimeCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Condition$$TimeCondition
    on Fragment$Condition$$TimeCondition {
  CopyWith$Fragment$Condition$$TimeCondition<Fragment$Condition$$TimeCondition>
      get copyWith => CopyWith$Fragment$Condition$$TimeCondition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Condition$$TimeCondition<TRes> {
  factory CopyWith$Fragment$Condition$$TimeCondition(
    Fragment$Condition$$TimeCondition instance,
    TRes Function(Fragment$Condition$$TimeCondition) then,
  ) = _CopyWithImpl$Fragment$Condition$$TimeCondition;

  factory CopyWith$Fragment$Condition$$TimeCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Condition$$TimeCondition;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Condition$$TimeCondition<TRes>
    implements CopyWith$Fragment$Condition$$TimeCondition<TRes> {
  _CopyWithImpl$Fragment$Condition$$TimeCondition(
    this._instance,
    this._then,
  );

  final Fragment$Condition$$TimeCondition _instance;

  final TRes Function(Fragment$Condition$$TimeCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Condition$$TimeCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Condition$$TimeCondition<TRes>
    implements CopyWith$Fragment$Condition$$TimeCondition<TRes> {
  _CopyWithStubImpl$Fragment$Condition$$TimeCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AndCondition implements Fragment$Condition$$AndCondition {
  Fragment$AndCondition({
    required this.left,
    required this.right,
    required this.name,
    this.$__typename = 'AndCondition',
  });

  factory Fragment$AndCondition.fromJson(Map<String, dynamic> json) {
    final l$left = json['left'];
    final l$right = json['right'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$AndCondition(
      left: Fragment$NonCompositeCondition.fromJson(
          (l$left as Map<String, dynamic>)),
      right: Fragment$NonCompositeCondition.fromJson(
          (l$right as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$NonCompositeCondition left;

  final Fragment$NonCompositeCondition right;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$left = left;
    _resultData['left'] = l$left.toJson();
    final l$right = right;
    _resultData['right'] = l$right.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$left = left;
    final l$right = right;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$left,
      l$right,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$AndCondition) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$left = left;
    final lOther$left = other.left;
    if (l$left != lOther$left) {
      return false;
    }
    final l$right = right;
    final lOther$right = other.right;
    if (l$right != lOther$right) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AndCondition on Fragment$AndCondition {
  CopyWith$Fragment$AndCondition<Fragment$AndCondition> get copyWith =>
      CopyWith$Fragment$AndCondition(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AndCondition<TRes> {
  factory CopyWith$Fragment$AndCondition(
    Fragment$AndCondition instance,
    TRes Function(Fragment$AndCondition) then,
  ) = _CopyWithImpl$Fragment$AndCondition;

  factory CopyWith$Fragment$AndCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AndCondition;

  TRes call({
    Fragment$NonCompositeCondition? left,
    Fragment$NonCompositeCondition? right,
    String? name,
    String? $__typename,
  });
  CopyWith$Fragment$NonCompositeCondition<TRes> get left;
  CopyWith$Fragment$NonCompositeCondition<TRes> get right;
}

class _CopyWithImpl$Fragment$AndCondition<TRes>
    implements CopyWith$Fragment$AndCondition<TRes> {
  _CopyWithImpl$Fragment$AndCondition(
    this._instance,
    this._then,
  );

  final Fragment$AndCondition _instance;

  final TRes Function(Fragment$AndCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? left = _undefined,
    Object? right = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AndCondition(
        left: left == _undefined || left == null
            ? _instance.left
            : (left as Fragment$NonCompositeCondition),
        right: right == _undefined || right == null
            ? _instance.right
            : (right as Fragment$NonCompositeCondition),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$NonCompositeCondition<TRes> get left {
    final local$left = _instance.left;
    return CopyWith$Fragment$NonCompositeCondition(
        local$left, (e) => call(left: e));
  }

  CopyWith$Fragment$NonCompositeCondition<TRes> get right {
    final local$right = _instance.right;
    return CopyWith$Fragment$NonCompositeCondition(
        local$right, (e) => call(right: e));
  }
}

class _CopyWithStubImpl$Fragment$AndCondition<TRes>
    implements CopyWith$Fragment$AndCondition<TRes> {
  _CopyWithStubImpl$Fragment$AndCondition(this._res);

  TRes _res;

  call({
    Fragment$NonCompositeCondition? left,
    Fragment$NonCompositeCondition? right,
    String? name,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$NonCompositeCondition<TRes> get left =>
      CopyWith$Fragment$NonCompositeCondition.stub(_res);
  CopyWith$Fragment$NonCompositeCondition<TRes> get right =>
      CopyWith$Fragment$NonCompositeCondition.stub(_res);
}

const fragmentDefinitionAndCondition = FragmentDefinitionNode(
  name: NameNode(value: 'AndCondition'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AndCondition'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'left'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'NonCompositeCondition'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'right'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'NonCompositeCondition'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'Condition'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentAndCondition = DocumentNode(definitions: [
  fragmentDefinitionAndCondition,
  fragmentDefinitionNonCompositeCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionTimeCondition,
]);

class Fragment$CompositeCondition implements Fragment$Condition {
  Fragment$CompositeCondition({
    required this.name,
    required this.$__typename,
  });

  factory Fragment$CompositeCondition.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AndCondition":
        return Fragment$CompositeCondition$$AndCondition.fromJson(json);

      case "TimeCondition":
        return Fragment$CompositeCondition$$TimeCondition.fromJson(json);

      default:
        final l$name = json['name'];
        final l$$__typename = json['__typename'];
        return Fragment$CompositeCondition(
          name: (l$name as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CompositeCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompositeCondition
    on Fragment$CompositeCondition {
  CopyWith$Fragment$CompositeCondition<Fragment$CompositeCondition>
      get copyWith => CopyWith$Fragment$CompositeCondition(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Fragment$CompositeCondition$$AndCondition)
        andCondition,
    required _T Function(Fragment$CompositeCondition$$TimeCondition)
        timeCondition,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AndCondition":
        return andCondition(this as Fragment$CompositeCondition$$AndCondition);

      case "TimeCondition":
        return timeCondition(
            this as Fragment$CompositeCondition$$TimeCondition);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$CompositeCondition$$AndCondition)? andCondition,
    _T Function(Fragment$CompositeCondition$$TimeCondition)? timeCondition,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AndCondition":
        if (andCondition != null) {
          return andCondition(
              this as Fragment$CompositeCondition$$AndCondition);
        } else {
          return orElse();
        }

      case "TimeCondition":
        if (timeCondition != null) {
          return timeCondition(
              this as Fragment$CompositeCondition$$TimeCondition);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$CompositeCondition<TRes> {
  factory CopyWith$Fragment$CompositeCondition(
    Fragment$CompositeCondition instance,
    TRes Function(Fragment$CompositeCondition) then,
  ) = _CopyWithImpl$Fragment$CompositeCondition;

  factory CopyWith$Fragment$CompositeCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompositeCondition;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CompositeCondition<TRes>
    implements CopyWith$Fragment$CompositeCondition<TRes> {
  _CopyWithImpl$Fragment$CompositeCondition(
    this._instance,
    this._then,
  );

  final Fragment$CompositeCondition _instance;

  final TRes Function(Fragment$CompositeCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CompositeCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CompositeCondition<TRes>
    implements CopyWith$Fragment$CompositeCondition<TRes> {
  _CopyWithStubImpl$Fragment$CompositeCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionCompositeCondition = FragmentDefinitionNode(
  name: NameNode(value: 'CompositeCondition'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Condition'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'TimeCondition'),
      directives: [],
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'AndCondition'),
      directives: [],
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'Condition'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCompositeCondition = DocumentNode(definitions: [
  fragmentDefinitionCompositeCondition,
  fragmentDefinitionTimeCondition,
  fragmentDefinitionAndCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionNonCompositeCondition,
]);

class Fragment$CompositeCondition$$AndCondition
    implements
        Fragment$AndCondition,
        Fragment$Condition$$AndCondition,
        Fragment$CompositeCondition {
  Fragment$CompositeCondition$$AndCondition({
    required this.left,
    required this.right,
    required this.name,
    this.$__typename = 'AndCondition',
  });

  factory Fragment$CompositeCondition$$AndCondition.fromJson(
      Map<String, dynamic> json) {
    final l$left = json['left'];
    final l$right = json['right'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$CompositeCondition$$AndCondition(
      left: Fragment$NonCompositeCondition.fromJson(
          (l$left as Map<String, dynamic>)),
      right: Fragment$NonCompositeCondition.fromJson(
          (l$right as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$NonCompositeCondition left;

  final Fragment$NonCompositeCondition right;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$left = left;
    _resultData['left'] = l$left.toJson();
    final l$right = right;
    _resultData['right'] = l$right.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$left = left;
    final l$right = right;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$left,
      l$right,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CompositeCondition$$AndCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$left = left;
    final lOther$left = other.left;
    if (l$left != lOther$left) {
      return false;
    }
    final l$right = right;
    final lOther$right = other.right;
    if (l$right != lOther$right) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompositeCondition$$AndCondition
    on Fragment$CompositeCondition$$AndCondition {
  CopyWith$Fragment$CompositeCondition$$AndCondition<
          Fragment$CompositeCondition$$AndCondition>
      get copyWith => CopyWith$Fragment$CompositeCondition$$AndCondition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CompositeCondition$$AndCondition<TRes> {
  factory CopyWith$Fragment$CompositeCondition$$AndCondition(
    Fragment$CompositeCondition$$AndCondition instance,
    TRes Function(Fragment$CompositeCondition$$AndCondition) then,
  ) = _CopyWithImpl$Fragment$CompositeCondition$$AndCondition;

  factory CopyWith$Fragment$CompositeCondition$$AndCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompositeCondition$$AndCondition;

  TRes call({
    Fragment$NonCompositeCondition? left,
    Fragment$NonCompositeCondition? right,
    String? name,
    String? $__typename,
  });
  CopyWith$Fragment$NonCompositeCondition<TRes> get left;
  CopyWith$Fragment$NonCompositeCondition<TRes> get right;
}

class _CopyWithImpl$Fragment$CompositeCondition$$AndCondition<TRes>
    implements CopyWith$Fragment$CompositeCondition$$AndCondition<TRes> {
  _CopyWithImpl$Fragment$CompositeCondition$$AndCondition(
    this._instance,
    this._then,
  );

  final Fragment$CompositeCondition$$AndCondition _instance;

  final TRes Function(Fragment$CompositeCondition$$AndCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? left = _undefined,
    Object? right = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CompositeCondition$$AndCondition(
        left: left == _undefined || left == null
            ? _instance.left
            : (left as Fragment$NonCompositeCondition),
        right: right == _undefined || right == null
            ? _instance.right
            : (right as Fragment$NonCompositeCondition),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$NonCompositeCondition<TRes> get left {
    final local$left = _instance.left;
    return CopyWith$Fragment$NonCompositeCondition(
        local$left, (e) => call(left: e));
  }

  CopyWith$Fragment$NonCompositeCondition<TRes> get right {
    final local$right = _instance.right;
    return CopyWith$Fragment$NonCompositeCondition(
        local$right, (e) => call(right: e));
  }
}

class _CopyWithStubImpl$Fragment$CompositeCondition$$AndCondition<TRes>
    implements CopyWith$Fragment$CompositeCondition$$AndCondition<TRes> {
  _CopyWithStubImpl$Fragment$CompositeCondition$$AndCondition(this._res);

  TRes _res;

  call({
    Fragment$NonCompositeCondition? left,
    Fragment$NonCompositeCondition? right,
    String? name,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$NonCompositeCondition<TRes> get left =>
      CopyWith$Fragment$NonCompositeCondition.stub(_res);
  CopyWith$Fragment$NonCompositeCondition<TRes> get right =>
      CopyWith$Fragment$NonCompositeCondition.stub(_res);
}

class Fragment$CompositeCondition$$TimeCondition
    implements
        Fragment$TimeCondition,
        Fragment$Condition$$TimeCondition,
        Fragment$CompositeCondition {
  Fragment$CompositeCondition$$TimeCondition({
    required this.name,
    this.$__typename = 'TimeCondition',
    required this.before,
  });

  factory Fragment$CompositeCondition$$TimeCondition.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$before = json['before'];
    return Fragment$CompositeCondition$$TimeCondition(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      before: (l$before as String),
    );
  }

  final String name;

  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$before = before;
    _resultData['before'] = l$before;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$before,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CompositeCondition$$TimeCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompositeCondition$$TimeCondition
    on Fragment$CompositeCondition$$TimeCondition {
  CopyWith$Fragment$CompositeCondition$$TimeCondition<
          Fragment$CompositeCondition$$TimeCondition>
      get copyWith => CopyWith$Fragment$CompositeCondition$$TimeCondition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CompositeCondition$$TimeCondition<TRes> {
  factory CopyWith$Fragment$CompositeCondition$$TimeCondition(
    Fragment$CompositeCondition$$TimeCondition instance,
    TRes Function(Fragment$CompositeCondition$$TimeCondition) then,
  ) = _CopyWithImpl$Fragment$CompositeCondition$$TimeCondition;

  factory CopyWith$Fragment$CompositeCondition$$TimeCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompositeCondition$$TimeCondition;

  TRes call({
    String? name,
    String? $__typename,
    String? before,
  });
}

class _CopyWithImpl$Fragment$CompositeCondition$$TimeCondition<TRes>
    implements CopyWith$Fragment$CompositeCondition$$TimeCondition<TRes> {
  _CopyWithImpl$Fragment$CompositeCondition$$TimeCondition(
    this._instance,
    this._then,
  );

  final Fragment$CompositeCondition$$TimeCondition _instance;

  final TRes Function(Fragment$CompositeCondition$$TimeCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? before = _undefined,
  }) =>
      _then(Fragment$CompositeCondition$$TimeCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        before: before == _undefined || before == null
            ? _instance.before
            : (before as String),
      ));
}

class _CopyWithStubImpl$Fragment$CompositeCondition$$TimeCondition<TRes>
    implements CopyWith$Fragment$CompositeCondition$$TimeCondition<TRes> {
  _CopyWithStubImpl$Fragment$CompositeCondition$$TimeCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    String? before,
  }) =>
      _res;
}

class Fragment$NonCompositeCondition implements Fragment$Condition {
  Fragment$NonCompositeCondition({
    required this.name,
    required this.$__typename,
  });

  factory Fragment$NonCompositeCondition.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AndCondition":
        return Fragment$NonCompositeCondition$$AndCondition.fromJson(json);

      case "TimeCondition":
        return Fragment$NonCompositeCondition$$TimeCondition.fromJson(json);

      default:
        final l$name = json['name'];
        final l$$__typename = json['__typename'];
        return Fragment$NonCompositeCondition(
          name: (l$name as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$NonCompositeCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$NonCompositeCondition
    on Fragment$NonCompositeCondition {
  CopyWith$Fragment$NonCompositeCondition<Fragment$NonCompositeCondition>
      get copyWith => CopyWith$Fragment$NonCompositeCondition(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Fragment$NonCompositeCondition$$AndCondition)
        andCondition,
    required _T Function(Fragment$NonCompositeCondition$$TimeCondition)
        timeCondition,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AndCondition":
        return andCondition(
            this as Fragment$NonCompositeCondition$$AndCondition);

      case "TimeCondition":
        return timeCondition(
            this as Fragment$NonCompositeCondition$$TimeCondition);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$NonCompositeCondition$$AndCondition)? andCondition,
    _T Function(Fragment$NonCompositeCondition$$TimeCondition)? timeCondition,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AndCondition":
        if (andCondition != null) {
          return andCondition(
              this as Fragment$NonCompositeCondition$$AndCondition);
        } else {
          return orElse();
        }

      case "TimeCondition":
        if (timeCondition != null) {
          return timeCondition(
              this as Fragment$NonCompositeCondition$$TimeCondition);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$NonCompositeCondition<TRes> {
  factory CopyWith$Fragment$NonCompositeCondition(
    Fragment$NonCompositeCondition instance,
    TRes Function(Fragment$NonCompositeCondition) then,
  ) = _CopyWithImpl$Fragment$NonCompositeCondition;

  factory CopyWith$Fragment$NonCompositeCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NonCompositeCondition;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$NonCompositeCondition<TRes>
    implements CopyWith$Fragment$NonCompositeCondition<TRes> {
  _CopyWithImpl$Fragment$NonCompositeCondition(
    this._instance,
    this._then,
  );

  final Fragment$NonCompositeCondition _instance;

  final TRes Function(Fragment$NonCompositeCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$NonCompositeCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$NonCompositeCondition<TRes>
    implements CopyWith$Fragment$NonCompositeCondition<TRes> {
  _CopyWithStubImpl$Fragment$NonCompositeCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionNonCompositeCondition = FragmentDefinitionNode(
  name: NameNode(value: 'NonCompositeCondition'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Condition'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Condition'),
      directives: [],
    ),
    FragmentSpreadNode(
      name: NameNode(value: 'TimeCondition'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentNonCompositeCondition = DocumentNode(definitions: [
  fragmentDefinitionNonCompositeCondition,
  fragmentDefinitionCondition,
  fragmentDefinitionTimeCondition,
]);

class Fragment$NonCompositeCondition$$AndCondition
    implements
        Fragment$Condition$$AndCondition,
        Fragment$NonCompositeCondition {
  Fragment$NonCompositeCondition$$AndCondition({
    required this.name,
    this.$__typename = 'AndCondition',
  });

  factory Fragment$NonCompositeCondition$$AndCondition.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$NonCompositeCondition$$AndCondition(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$NonCompositeCondition$$AndCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$NonCompositeCondition$$AndCondition
    on Fragment$NonCompositeCondition$$AndCondition {
  CopyWith$Fragment$NonCompositeCondition$$AndCondition<
          Fragment$NonCompositeCondition$$AndCondition>
      get copyWith => CopyWith$Fragment$NonCompositeCondition$$AndCondition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$NonCompositeCondition$$AndCondition<TRes> {
  factory CopyWith$Fragment$NonCompositeCondition$$AndCondition(
    Fragment$NonCompositeCondition$$AndCondition instance,
    TRes Function(Fragment$NonCompositeCondition$$AndCondition) then,
  ) = _CopyWithImpl$Fragment$NonCompositeCondition$$AndCondition;

  factory CopyWith$Fragment$NonCompositeCondition$$AndCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NonCompositeCondition$$AndCondition;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$NonCompositeCondition$$AndCondition<TRes>
    implements CopyWith$Fragment$NonCompositeCondition$$AndCondition<TRes> {
  _CopyWithImpl$Fragment$NonCompositeCondition$$AndCondition(
    this._instance,
    this._then,
  );

  final Fragment$NonCompositeCondition$$AndCondition _instance;

  final TRes Function(Fragment$NonCompositeCondition$$AndCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$NonCompositeCondition$$AndCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$NonCompositeCondition$$AndCondition<TRes>
    implements CopyWith$Fragment$NonCompositeCondition$$AndCondition<TRes> {
  _CopyWithStubImpl$Fragment$NonCompositeCondition$$AndCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$NonCompositeCondition$$TimeCondition
    implements
        Fragment$Condition$$TimeCondition,
        Fragment$TimeCondition,
        Fragment$NonCompositeCondition {
  Fragment$NonCompositeCondition$$TimeCondition({
    required this.name,
    this.$__typename = 'TimeCondition',
    required this.before,
  });

  factory Fragment$NonCompositeCondition$$TimeCondition.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$before = json['before'];
    return Fragment$NonCompositeCondition$$TimeCondition(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      before: (l$before as String),
    );
  }

  final String name;

  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$before = before;
    _resultData['before'] = l$before;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$before,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$NonCompositeCondition$$TimeCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$NonCompositeCondition$$TimeCondition
    on Fragment$NonCompositeCondition$$TimeCondition {
  CopyWith$Fragment$NonCompositeCondition$$TimeCondition<
          Fragment$NonCompositeCondition$$TimeCondition>
      get copyWith => CopyWith$Fragment$NonCompositeCondition$$TimeCondition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$NonCompositeCondition$$TimeCondition<TRes> {
  factory CopyWith$Fragment$NonCompositeCondition$$TimeCondition(
    Fragment$NonCompositeCondition$$TimeCondition instance,
    TRes Function(Fragment$NonCompositeCondition$$TimeCondition) then,
  ) = _CopyWithImpl$Fragment$NonCompositeCondition$$TimeCondition;

  factory CopyWith$Fragment$NonCompositeCondition$$TimeCondition.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$NonCompositeCondition$$TimeCondition;

  TRes call({
    String? name,
    String? $__typename,
    String? before,
  });
}

class _CopyWithImpl$Fragment$NonCompositeCondition$$TimeCondition<TRes>
    implements CopyWith$Fragment$NonCompositeCondition$$TimeCondition<TRes> {
  _CopyWithImpl$Fragment$NonCompositeCondition$$TimeCondition(
    this._instance,
    this._then,
  );

  final Fragment$NonCompositeCondition$$TimeCondition _instance;

  final TRes Function(Fragment$NonCompositeCondition$$TimeCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? before = _undefined,
  }) =>
      _then(Fragment$NonCompositeCondition$$TimeCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        before: before == _undefined || before == null
            ? _instance.before
            : (before as String),
      ));
}

class _CopyWithStubImpl$Fragment$NonCompositeCondition$$TimeCondition<TRes>
    implements CopyWith$Fragment$NonCompositeCondition$$TimeCondition<TRes> {
  _CopyWithStubImpl$Fragment$NonCompositeCondition$$TimeCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    String? before,
  }) =>
      _res;
}

class Fragment$TimeCondition implements Fragment$Condition$$TimeCondition {
  Fragment$TimeCondition({
    required this.name,
    this.$__typename = 'TimeCondition',
    required this.before,
  });

  factory Fragment$TimeCondition.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$before = json['before'];
    return Fragment$TimeCondition(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      before: (l$before as String),
    );
  }

  final String name;

  final String $__typename;

  final String before;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$before = before;
    _resultData['before'] = l$before;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    final l$before = before;
    return Object.hashAll([
      l$name,
      l$$__typename,
      l$before,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TimeCondition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TimeCondition on Fragment$TimeCondition {
  CopyWith$Fragment$TimeCondition<Fragment$TimeCondition> get copyWith =>
      CopyWith$Fragment$TimeCondition(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TimeCondition<TRes> {
  factory CopyWith$Fragment$TimeCondition(
    Fragment$TimeCondition instance,
    TRes Function(Fragment$TimeCondition) then,
  ) = _CopyWithImpl$Fragment$TimeCondition;

  factory CopyWith$Fragment$TimeCondition.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TimeCondition;

  TRes call({
    String? name,
    String? $__typename,
    String? before,
  });
}

class _CopyWithImpl$Fragment$TimeCondition<TRes>
    implements CopyWith$Fragment$TimeCondition<TRes> {
  _CopyWithImpl$Fragment$TimeCondition(
    this._instance,
    this._then,
  );

  final Fragment$TimeCondition _instance;

  final TRes Function(Fragment$TimeCondition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? before = _undefined,
  }) =>
      _then(Fragment$TimeCondition(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        before: before == _undefined || before == null
            ? _instance.before
            : (before as String),
      ));
}

class _CopyWithStubImpl$Fragment$TimeCondition<TRes>
    implements CopyWith$Fragment$TimeCondition<TRes> {
  _CopyWithStubImpl$Fragment$TimeCondition(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
    String? before,
  }) =>
      _res;
}

const fragmentDefinitionTimeCondition = FragmentDefinitionNode(
  name: NameNode(value: 'TimeCondition'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TimeCondition'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Condition'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'before'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentTimeCondition = DocumentNode(definitions: [
  fragmentDefinitionTimeCondition,
  fragmentDefinitionCondition,
]);
