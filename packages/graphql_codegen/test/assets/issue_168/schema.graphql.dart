import 'package:gql/ast.dart';

class Input$WalletGetContentInput {
  factory Input$WalletGetContentInput({String? id}) =>
      Input$WalletGetContentInput._({
        if (id != null) r'id': id,
      });

  Input$WalletGetContentInput._(this._$data);

  factory Input$WalletGetContentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$WalletGetContentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$WalletGetContentInput<Input$WalletGetContentInput>
      get copyWith => CopyWith$Input$WalletGetContentInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WalletGetContentInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$WalletGetContentInput<TRes> {
  factory CopyWith$Input$WalletGetContentInput(
    Input$WalletGetContentInput instance,
    TRes Function(Input$WalletGetContentInput) then,
  ) = _CopyWithImpl$Input$WalletGetContentInput;

  factory CopyWith$Input$WalletGetContentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WalletGetContentInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$WalletGetContentInput<TRes>
    implements CopyWith$Input$WalletGetContentInput<TRes> {
  _CopyWithImpl$Input$WalletGetContentInput(
    this._instance,
    this._then,
  );

  final Input$WalletGetContentInput _instance;

  final TRes Function(Input$WalletGetContentInput) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Input$WalletGetContentInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$WalletGetContentInput<TRes>
    implements CopyWith$Input$WalletGetContentInput<TRes> {
  _CopyWithStubImpl$Input$WalletGetContentInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Query$WalletGetContent {
  factory Variables$Query$WalletGetContent(
          {required Input$WalletGetContentInput input}) =>
      Variables$Query$WalletGetContent._({
        r'input': input,
      });

  Variables$Query$WalletGetContent._(this._$data);

  factory Variables$Query$WalletGetContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$WalletGetContentInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$WalletGetContent._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WalletGetContentInput get input =>
      (_$data['input'] as Input$WalletGetContentInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$WalletGetContent<Variables$Query$WalletGetContent>
      get copyWith => CopyWith$Variables$Query$WalletGetContent(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$WalletGetContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$WalletGetContent<TRes> {
  factory CopyWith$Variables$Query$WalletGetContent(
    Variables$Query$WalletGetContent instance,
    TRes Function(Variables$Query$WalletGetContent) then,
  ) = _CopyWithImpl$Variables$Query$WalletGetContent;

  factory CopyWith$Variables$Query$WalletGetContent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$WalletGetContent;

  TRes call({Input$WalletGetContentInput? input});
  CopyWith$Input$WalletGetContentInput<TRes> get input;
}

class _CopyWithImpl$Variables$Query$WalletGetContent<TRes>
    implements CopyWith$Variables$Query$WalletGetContent<TRes> {
  _CopyWithImpl$Variables$Query$WalletGetContent(
    this._instance,
    this._then,
  );

  final Variables$Query$WalletGetContent _instance;

  final TRes Function(Variables$Query$WalletGetContent) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$WalletGetContent._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$WalletGetContentInput),
      }));
  CopyWith$Input$WalletGetContentInput<TRes> get input {
    final local$input = _instance.input;
    return CopyWith$Input$WalletGetContentInput(
        local$input, (e) => call(input: e));
  }
}

class _CopyWithStubImpl$Variables$Query$WalletGetContent<TRes>
    implements CopyWith$Variables$Query$WalletGetContent<TRes> {
  _CopyWithStubImpl$Variables$Query$WalletGetContent(this._res);

  TRes _res;

  call({Input$WalletGetContentInput? input}) => _res;
  CopyWith$Input$WalletGetContentInput<TRes> get input =>
      CopyWith$Input$WalletGetContentInput.stub(_res);
}

class Query$WalletGetContent {
  Query$WalletGetContent({
    required this.walletGetContent,
    required this.$__typename,
  });

  factory Query$WalletGetContent.fromJson(Map<String, dynamic> json) {
    final l$walletGetContent = json['walletGetContent'];
    final l$$__typename = json['__typename'];
    return Query$WalletGetContent(
      walletGetContent: Query$WalletGetContent$walletGetContent.fromJson(
          (l$walletGetContent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$WalletGetContent$walletGetContent walletGetContent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$walletGetContent = walletGetContent;
    _resultData['walletGetContent'] = l$walletGetContent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$walletGetContent = walletGetContent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$walletGetContent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$WalletGetContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$walletGetContent = walletGetContent;
    final lOther$walletGetContent = other.walletGetContent;
    if (l$walletGetContent != lOther$walletGetContent) {
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

extension UtilityExtension$Query$WalletGetContent on Query$WalletGetContent {
  CopyWith$Query$WalletGetContent<Query$WalletGetContent> get copyWith =>
      CopyWith$Query$WalletGetContent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WalletGetContent<TRes> {
  factory CopyWith$Query$WalletGetContent(
    Query$WalletGetContent instance,
    TRes Function(Query$WalletGetContent) then,
  ) = _CopyWithImpl$Query$WalletGetContent;

  factory CopyWith$Query$WalletGetContent.stub(TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent;

  TRes call({
    Query$WalletGetContent$walletGetContent? walletGetContent,
    String? $__typename,
  });
  CopyWith$Query$WalletGetContent$walletGetContent<TRes> get walletGetContent;
}

class _CopyWithImpl$Query$WalletGetContent<TRes>
    implements CopyWith$Query$WalletGetContent<TRes> {
  _CopyWithImpl$Query$WalletGetContent(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent _instance;

  final TRes Function(Query$WalletGetContent) _then;

  static const _undefined = {};

  TRes call({
    Object? walletGetContent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WalletGetContent(
        walletGetContent:
            walletGetContent == _undefined || walletGetContent == null
                ? _instance.walletGetContent
                : (walletGetContent as Query$WalletGetContent$walletGetContent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$WalletGetContent$walletGetContent<TRes> get walletGetContent {
    final local$walletGetContent = _instance.walletGetContent;
    return CopyWith$Query$WalletGetContent$walletGetContent(
        local$walletGetContent, (e) => call(walletGetContent: e));
  }
}

class _CopyWithStubImpl$Query$WalletGetContent<TRes>
    implements CopyWith$Query$WalletGetContent<TRes> {
  _CopyWithStubImpl$Query$WalletGetContent(this._res);

  TRes _res;

  call({
    Query$WalletGetContent$walletGetContent? walletGetContent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$WalletGetContent$walletGetContent<TRes> get walletGetContent =>
      CopyWith$Query$WalletGetContent$walletGetContent.stub(_res);
}

const documentNodeQueryWalletGetContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'WalletGetContent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'WalletGetContentInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'walletGetContent'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'blocks'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'WalletContentBlockList'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'blockType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'caption'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'items'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(
                              value: 'WalletContentItemContentPreview'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'caption'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'imageURL'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'link'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
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
]);

class Query$WalletGetContent$walletGetContent {
  Query$WalletGetContent$walletGetContent({
    this.blocks,
    required this.$__typename,
  });

  factory Query$WalletGetContent$walletGetContent.fromJson(
      Map<String, dynamic> json) {
    final l$blocks = json['blocks'];
    final l$$__typename = json['__typename'];
    return Query$WalletGetContent$walletGetContent(
      blocks: (l$blocks as List<dynamic>?)
          ?.map((e) => Query$WalletGetContent$walletGetContent$blocks.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$WalletGetContent$walletGetContent$blocks>? blocks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$blocks = blocks;
    _resultData['blocks'] = l$blocks?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$blocks = blocks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$blocks == null ? null : Object.hashAll(l$blocks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$WalletGetContent$walletGetContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (l$blocks != null && lOther$blocks != null) {
      if (l$blocks.length != lOther$blocks.length) {
        return false;
      }
      for (int i = 0; i < l$blocks.length; i++) {
        final l$blocks$entry = l$blocks[i];
        final lOther$blocks$entry = lOther$blocks[i];
        if (l$blocks$entry != lOther$blocks$entry) {
          return false;
        }
      }
    } else if (l$blocks != lOther$blocks) {
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

extension UtilityExtension$Query$WalletGetContent$walletGetContent
    on Query$WalletGetContent$walletGetContent {
  CopyWith$Query$WalletGetContent$walletGetContent<
          Query$WalletGetContent$walletGetContent>
      get copyWith => CopyWith$Query$WalletGetContent$walletGetContent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletGetContent$walletGetContent<TRes> {
  factory CopyWith$Query$WalletGetContent$walletGetContent(
    Query$WalletGetContent$walletGetContent instance,
    TRes Function(Query$WalletGetContent$walletGetContent) then,
  ) = _CopyWithImpl$Query$WalletGetContent$walletGetContent;

  factory CopyWith$Query$WalletGetContent$walletGetContent.stub(TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent$walletGetContent;

  TRes call({
    List<Query$WalletGetContent$walletGetContent$blocks>? blocks,
    String? $__typename,
  });
  TRes blocks(
      Iterable<Query$WalletGetContent$walletGetContent$blocks>? Function(
              Iterable<
                  CopyWith$Query$WalletGetContent$walletGetContent$blocks<
                      Query$WalletGetContent$walletGetContent$blocks>>?)
          _fn);
}

class _CopyWithImpl$Query$WalletGetContent$walletGetContent<TRes>
    implements CopyWith$Query$WalletGetContent$walletGetContent<TRes> {
  _CopyWithImpl$Query$WalletGetContent$walletGetContent(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent$walletGetContent _instance;

  final TRes Function(Query$WalletGetContent$walletGetContent) _then;

  static const _undefined = {};

  TRes call({
    Object? blocks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WalletGetContent$walletGetContent(
        blocks: blocks == _undefined
            ? _instance.blocks
            : (blocks as List<Query$WalletGetContent$walletGetContent$blocks>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes blocks(
          Iterable<Query$WalletGetContent$walletGetContent$blocks>? Function(
                  Iterable<
                      CopyWith$Query$WalletGetContent$walletGetContent$blocks<
                          Query$WalletGetContent$walletGetContent$blocks>>?)
              _fn) =>
      call(
          blocks: _fn(_instance.blocks?.map(
              (e) => CopyWith$Query$WalletGetContent$walletGetContent$blocks(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$WalletGetContent$walletGetContent<TRes>
    implements CopyWith$Query$WalletGetContent$walletGetContent<TRes> {
  _CopyWithStubImpl$Query$WalletGetContent$walletGetContent(this._res);

  TRes _res;

  call({
    List<Query$WalletGetContent$walletGetContent$blocks>? blocks,
    String? $__typename,
  }) =>
      _res;
  blocks(_fn) => _res;
}

class Query$WalletGetContent$walletGetContent$blocks {
  Query$WalletGetContent$walletGetContent$blocks({required this.$__typename});

  factory Query$WalletGetContent$walletGetContent$blocks.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "WalletContentBlockList":
        return Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$WalletGetContent$walletGetContent$blocks(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$WalletGetContent$walletGetContent$blocks) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$WalletGetContent$walletGetContent$blocks
    on Query$WalletGetContent$walletGetContent$blocks {
  CopyWith$Query$WalletGetContent$walletGetContent$blocks<
          Query$WalletGetContent$walletGetContent$blocks>
      get copyWith => CopyWith$Query$WalletGetContent$walletGetContent$blocks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletGetContent$walletGetContent$blocks<TRes> {
  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks(
    Query$WalletGetContent$walletGetContent$blocks instance,
    TRes Function(Query$WalletGetContent$walletGetContent$blocks) then,
  ) = _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks;

  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks<TRes>
    implements CopyWith$Query$WalletGetContent$walletGetContent$blocks<TRes> {
  _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent$walletGetContent$blocks _instance;

  final TRes Function(Query$WalletGetContent$walletGetContent$blocks) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$WalletGetContent$walletGetContent$blocks(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks<TRes>
    implements CopyWith$Query$WalletGetContent$walletGetContent$blocks<TRes> {
  _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList
    implements Query$WalletGetContent$walletGetContent$blocks {
  Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList({
    required this.$__typename,
    required this.id,
    required this.blockType,
    this.caption,
    this.items,
  });

  factory Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$blockType = json['blockType'];
    final l$caption = json['caption'];
    final l$items = json['items'];
    return Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      blockType:
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType
              .fromJson((l$blockType as Map<String, dynamic>)),
      caption: (l$caption as String?),
      items: (l$items as List<dynamic>?)
          ?.map((e) =>
              Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final String id;

  final Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType
      blockType;

  final String? caption;

  final List<
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>?
      items;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$blockType = blockType;
    _resultData['blockType'] = l$blockType.toJson();
    final l$caption = caption;
    _resultData['caption'] = l$caption;
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$blockType = blockType;
    final l$caption = caption;
    final l$items = items;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$blockType,
      l$caption,
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$blockType = blockType;
    final lOther$blockType = other.blockType;
    if (l$blockType != lOther$blockType) {
      return false;
    }
    final l$caption = caption;
    final lOther$caption = other.caption;
    if (l$caption != lOther$caption) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList
    on Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList {
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList<
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList>
      get copyWith =>
          CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList<
    TRes> {
  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList(
    Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList
        instance,
    TRes Function(
            Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList)
        then,
  ) = _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList;

  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList;

  TRes call({
    String? $__typename,
    String? id,
    Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType?
        blockType,
    String? caption,
    List<Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>?
        items,
  });
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
      TRes> get blockType;
  TRes items(
      Iterable<Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>? Function(
              Iterable<
                  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
                      Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>>?)
          _fn);
}

class _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList<
            TRes> {
  _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList
      _instance;

  final TRes Function(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList)
      _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? blockType = _undefined,
    Object? caption = _undefined,
    Object? items = _undefined,
  }) =>
      _then(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        blockType: blockType == _undefined || blockType == null
            ? _instance.blockType
            : (blockType
                as Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType),
        caption:
            caption == _undefined ? _instance.caption : (caption as String?),
        items: items == _undefined
            ? _instance.items
            : (items as List<
                Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>?),
      ));
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
      TRes> get blockType {
    final local$blockType = _instance.blockType;
    return CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
        local$blockType, (e) => call(blockType: e));
  }

  TRes items(
          Iterable<Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>? Function(
                  Iterable<
                      CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
                          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) =>
              CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList<
            TRes> {
  _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType?
        blockType,
    String? caption,
    List<Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>?
        items,
  }) =>
      _res;
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
          TRes>
      get blockType =>
          CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType
              .stub(_res);
  items(_fn) => _res;
}

class Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType {
  Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType({
    required this.id,
    required this.$__typename,
  });

  factory Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType
    on Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType {
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType>
      get copyWith =>
          CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
    TRes> {
  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
    Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType
        instance,
    TRes Function(
            Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType)
        then,
  ) = _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType;

  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
            TRes> {
  _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType
      _instance;

  final TRes Function(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType<
            TRes> {
  _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$blockType(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items {
  Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
      {required this.$__typename});

  factory Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "WalletContentItemContentPreview":
        return Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items
    on Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items {
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items>
      get copyWith =>
          CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
    TRes> {
  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
    Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items
        instance,
    TRes Function(
            Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items)
        then,
  ) = _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items;

  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
            TRes> {
  _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items
      _instance;

  final TRes Function(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items)
      _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items<
            TRes> {
  _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview
    implements
        Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items {
  Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview({
    required this.$__typename,
    required this.id,
    this.caption,
    this.imageURL,
    this.link,
  });

  factory Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$caption = json['caption'];
    final l$imageURL = json['imageURL'];
    final l$link = json['link'];
    return Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      caption: (l$caption as String?),
      imageURL: (l$imageURL as String?),
      link: (l$link as String?),
    );
  }

  final String $__typename;

  final String id;

  final String? caption;

  final String? imageURL;

  final String? link;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$caption = caption;
    _resultData['caption'] = l$caption;
    final l$imageURL = imageURL;
    _resultData['imageURL'] = l$imageURL;
    final l$link = link;
    _resultData['link'] = l$link;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$caption = caption;
    final l$imageURL = imageURL;
    final l$link = link;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$caption,
      l$imageURL,
      l$link,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$caption = caption;
    final lOther$caption = other.caption;
    if (l$caption != lOther$caption) {
      return false;
    }
    final l$imageURL = imageURL;
    final lOther$imageURL = other.imageURL;
    if (l$imageURL != lOther$imageURL) {
      return false;
    }
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview
    on Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview {
  CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview<
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview>
      get copyWith =>
          CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview<
    TRes> {
  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview(
    Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview
        instance,
    TRes Function(
            Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview)
        then,
  ) = _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview;

  factory CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview;

  TRes call({
    String? $__typename,
    String? id,
    String? caption,
    String? imageURL,
    String? link,
  });
}

class _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview<
            TRes> {
  _CopyWithImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview(
    this._instance,
    this._then,
  );

  final Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview
      _instance;

  final TRes Function(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview)
      _then;

  static const _undefined = {};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? caption = _undefined,
    Object? imageURL = _undefined,
    Object? link = _undefined,
  }) =>
      _then(
          Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        caption:
            caption == _undefined ? _instance.caption : (caption as String?),
        imageURL:
            imageURL == _undefined ? _instance.imageURL : (imageURL as String?),
        link: link == _undefined ? _instance.link : (link as String?),
      ));
}

class _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview<
        TRes>
    implements
        CopyWith$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview<
            TRes> {
  _CopyWithStubImpl$Query$WalletGetContent$walletGetContent$blocks$$WalletContentBlockList$items$$WalletContentItemContentPreview(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? caption,
    String? imageURL,
    String? link,
  }) =>
      _res;
}

const possibleTypesMap = {
  'WalletContentBlock': {'WalletContentBlockList'},
  'WalletContentItem': {'WalletContentItemContentPreview'},
};
