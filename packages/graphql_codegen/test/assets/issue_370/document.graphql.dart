import 'package:gql/ast.dart';

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

class Fragment$MediaMinimalFrag {
  Fragment$MediaMinimalFrag({
    this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaMinimalFrag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaMinimalFrag(
      id: (l$id as String?),
      type: (l$type as String?),
      title: l$title == null
          ? null
          : Fragment$MediaMinimalFrag$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaMinimalFrag$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? type;

  final Fragment$MediaMinimalFrag$title? title;

  final Fragment$MediaMinimalFrag$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaMinimalFrag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Fragment$MediaMinimalFrag
    on Fragment$MediaMinimalFrag {
  CopyWith$Fragment$MediaMinimalFrag<Fragment$MediaMinimalFrag> get copyWith =>
      CopyWith$Fragment$MediaMinimalFrag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaMinimalFrag<TRes> {
  factory CopyWith$Fragment$MediaMinimalFrag(
    Fragment$MediaMinimalFrag instance,
    TRes Function(Fragment$MediaMinimalFrag) then,
  ) = _CopyWithImpl$Fragment$MediaMinimalFrag;

  factory CopyWith$Fragment$MediaMinimalFrag.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaMinimalFrag;

  TRes call({
    String? id,
    String? type,
    Fragment$MediaMinimalFrag$title? title,
    Fragment$MediaMinimalFrag$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$MediaMinimalFrag$title<TRes> get title;
  CopyWith$Fragment$MediaMinimalFrag$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$MediaMinimalFrag<TRes>
    implements CopyWith$Fragment$MediaMinimalFrag<TRes> {
  _CopyWithImpl$Fragment$MediaMinimalFrag(
    this._instance,
    this._then,
  );

  final Fragment$MediaMinimalFrag _instance;

  final TRes Function(Fragment$MediaMinimalFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaMinimalFrag(
        id: id == _undefined ? _instance.id : (id as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaMinimalFrag$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaMinimalFrag$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaMinimalFrag$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaMinimalFrag$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaMinimalFrag$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaMinimalFrag$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaMinimalFrag$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaMinimalFrag$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaMinimalFrag<TRes>
    implements CopyWith$Fragment$MediaMinimalFrag<TRes> {
  _CopyWithStubImpl$Fragment$MediaMinimalFrag(this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    Fragment$MediaMinimalFrag$title? title,
    Fragment$MediaMinimalFrag$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaMinimalFrag$title<TRes> get title =>
      CopyWith$Fragment$MediaMinimalFrag$title.stub(_res);

  CopyWith$Fragment$MediaMinimalFrag$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaMinimalFrag$coverImage.stub(_res);
}

const fragmentDefinitionMediaMinimalFrag = FragmentDefinitionNode(
  name: NameNode(value: 'MediaMinimalFrag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'romaji'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'userPreferred'),
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
      name: NameNode(value: 'coverImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'large'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'medium'),
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
);
const documentNodeFragmentMediaMinimalFrag = DocumentNode(definitions: [
  fragmentDefinitionMediaMinimalFrag,
]);

class Fragment$MediaMinimalFrag$title {
  Fragment$MediaMinimalFrag$title({
    this.romaji,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaMinimalFrag$title.fromJson(Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaMinimalFrag$title(
      romaji: (l$romaji as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaMinimalFrag$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Fragment$MediaMinimalFrag$title
    on Fragment$MediaMinimalFrag$title {
  CopyWith$Fragment$MediaMinimalFrag$title<Fragment$MediaMinimalFrag$title>
      get copyWith => CopyWith$Fragment$MediaMinimalFrag$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaMinimalFrag$title<TRes> {
  factory CopyWith$Fragment$MediaMinimalFrag$title(
    Fragment$MediaMinimalFrag$title instance,
    TRes Function(Fragment$MediaMinimalFrag$title) then,
  ) = _CopyWithImpl$Fragment$MediaMinimalFrag$title;

  factory CopyWith$Fragment$MediaMinimalFrag$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaMinimalFrag$title;

  TRes call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaMinimalFrag$title<TRes>
    implements CopyWith$Fragment$MediaMinimalFrag$title<TRes> {
  _CopyWithImpl$Fragment$MediaMinimalFrag$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaMinimalFrag$title _instance;

  final TRes Function(Fragment$MediaMinimalFrag$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaMinimalFrag$title(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaMinimalFrag$title<TRes>
    implements CopyWith$Fragment$MediaMinimalFrag$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaMinimalFrag$title(this._res);

  TRes _res;

  call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaMinimalFrag$coverImage {
  Fragment$MediaMinimalFrag$coverImage({
    this.large,
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaMinimalFrag$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaMinimalFrag$coverImage(
      large: (l$large as String?),
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaMinimalFrag$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Fragment$MediaMinimalFrag$coverImage
    on Fragment$MediaMinimalFrag$coverImage {
  CopyWith$Fragment$MediaMinimalFrag$coverImage<
          Fragment$MediaMinimalFrag$coverImage>
      get copyWith => CopyWith$Fragment$MediaMinimalFrag$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaMinimalFrag$coverImage<TRes> {
  factory CopyWith$Fragment$MediaMinimalFrag$coverImage(
    Fragment$MediaMinimalFrag$coverImage instance,
    TRes Function(Fragment$MediaMinimalFrag$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaMinimalFrag$coverImage;

  factory CopyWith$Fragment$MediaMinimalFrag$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaMinimalFrag$coverImage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaMinimalFrag$coverImage<TRes>
    implements CopyWith$Fragment$MediaMinimalFrag$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaMinimalFrag$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaMinimalFrag$coverImage _instance;

  final TRes Function(Fragment$MediaMinimalFrag$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaMinimalFrag$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaMinimalFrag$coverImage<TRes>
    implements CopyWith$Fragment$MediaMinimalFrag$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaMinimalFrag$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$MediaMinimal {
  factory Variables$Query$MediaMinimal({
    int? id,
    String? search,
  }) =>
      Variables$Query$MediaMinimal._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  Variables$Query$MediaMinimal._(this._$data);

  factory Variables$Query$MediaMinimal.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$MediaMinimal._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaMinimal<Variables$Query$MediaMinimal>
      get copyWith => CopyWith$Variables$Query$MediaMinimal(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaMinimal ||
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaMinimal<TRes> {
  factory CopyWith$Variables$Query$MediaMinimal(
    Variables$Query$MediaMinimal instance,
    TRes Function(Variables$Query$MediaMinimal) then,
  ) = _CopyWithImpl$Variables$Query$MediaMinimal;

  factory CopyWith$Variables$Query$MediaMinimal.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaMinimal;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$MediaMinimal<TRes>
    implements CopyWith$Variables$Query$MediaMinimal<TRes> {
  _CopyWithImpl$Variables$Query$MediaMinimal(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaMinimal _instance;

  final TRes Function(Variables$Query$MediaMinimal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$MediaMinimal._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaMinimal<TRes>
    implements CopyWith$Variables$Query$MediaMinimal<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaMinimal(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class Query$MediaMinimal {
  Query$MediaMinimal({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaMinimal.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaMinimal(
      Media: l$Media == null
          ? null
          : Fragment$MediaMinimalFrag.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaMinimalFrag? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaMinimal || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$MediaMinimal on Query$MediaMinimal {
  CopyWith$Query$MediaMinimal<Query$MediaMinimal> get copyWith =>
      CopyWith$Query$MediaMinimal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaMinimal<TRes> {
  factory CopyWith$Query$MediaMinimal(
    Query$MediaMinimal instance,
    TRes Function(Query$MediaMinimal) then,
  ) = _CopyWithImpl$Query$MediaMinimal;

  factory CopyWith$Query$MediaMinimal.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaMinimal;

  TRes call({
    Fragment$MediaMinimalFrag? Media,
    String? $__typename,
  });
  CopyWith$Fragment$MediaMinimalFrag<TRes> get Media;
}

class _CopyWithImpl$Query$MediaMinimal<TRes>
    implements CopyWith$Query$MediaMinimal<TRes> {
  _CopyWithImpl$Query$MediaMinimal(
    this._instance,
    this._then,
  );

  final Query$MediaMinimal _instance;

  final TRes Function(Query$MediaMinimal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaMinimal(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Fragment$MediaMinimalFrag?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaMinimalFrag<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Fragment$MediaMinimalFrag.stub(_then(_instance))
        : CopyWith$Fragment$MediaMinimalFrag(
            local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaMinimal<TRes>
    implements CopyWith$Query$MediaMinimal<TRes> {
  _CopyWithStubImpl$Query$MediaMinimal(this._res);

  TRes _res;

  call({
    Fragment$MediaMinimalFrag? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaMinimalFrag<TRes> get Media =>
      CopyWith$Fragment$MediaMinimalFrag.stub(_res);
}

const documentNodeQueryMediaMinimal = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaMinimal'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaMinimalFrag'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMediaMinimalFrag,
]);

class Variables$Query$MediaFull {
  factory Variables$Query$MediaFull({
    int? id,
    String? search,
  }) =>
      Variables$Query$MediaFull._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  Variables$Query$MediaFull._(this._$data);

  factory Variables$Query$MediaFull.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$MediaFull._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaFull<Variables$Query$MediaFull> get copyWith =>
      CopyWith$Variables$Query$MediaFull(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaFull ||
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaFull<TRes> {
  factory CopyWith$Variables$Query$MediaFull(
    Variables$Query$MediaFull instance,
    TRes Function(Variables$Query$MediaFull) then,
  ) = _CopyWithImpl$Variables$Query$MediaFull;

  factory CopyWith$Variables$Query$MediaFull.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaFull;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$MediaFull<TRes>
    implements CopyWith$Variables$Query$MediaFull<TRes> {
  _CopyWithImpl$Variables$Query$MediaFull(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaFull _instance;

  final TRes Function(Variables$Query$MediaFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$MediaFull._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaFull<TRes>
    implements CopyWith$Variables$Query$MediaFull<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaFull(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class Query$MediaFull {
  Query$MediaFull({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaFull.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaFull(
      Media: l$Media == null
          ? null
          : Query$MediaFull$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaFull$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaFull || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$MediaFull on Query$MediaFull {
  CopyWith$Query$MediaFull<Query$MediaFull> get copyWith =>
      CopyWith$Query$MediaFull(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaFull<TRes> {
  factory CopyWith$Query$MediaFull(
    Query$MediaFull instance,
    TRes Function(Query$MediaFull) then,
  ) = _CopyWithImpl$Query$MediaFull;

  factory CopyWith$Query$MediaFull.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaFull;

  TRes call({
    Query$MediaFull$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$MediaFull$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaFull<TRes>
    implements CopyWith$Query$MediaFull<TRes> {
  _CopyWithImpl$Query$MediaFull(
    this._instance,
    this._then,
  );

  final Query$MediaFull _instance;

  final TRes Function(Query$MediaFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaFull(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaFull$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaFull$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaFull$Media.stub(_then(_instance))
        : CopyWith$Query$MediaFull$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaFull<TRes>
    implements CopyWith$Query$MediaFull<TRes> {
  _CopyWithStubImpl$Query$MediaFull(this._res);

  TRes _res;

  call({
    Query$MediaFull$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaFull$Media<TRes> get Media =>
      CopyWith$Query$MediaFull$Media.stub(_res);
}

const documentNodeQueryMediaFull = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaFull'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaMinimalFrag'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'nextEpisode'),
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
  fragmentDefinitionMediaMinimalFrag,
]);

class Query$MediaFull$Media implements Fragment$MediaMinimalFrag {
  Query$MediaFull$Media({
    this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.nextEpisode,
  });

  factory Query$MediaFull$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$nextEpisode = json['nextEpisode'];
    return Query$MediaFull$Media(
      id: (l$id as String?),
      type: (l$type as String?),
      title: l$title == null
          ? null
          : Query$MediaFull$Media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$MediaFull$Media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      nextEpisode: (l$nextEpisode as int?),
    );
  }

  final String? id;

  final String? type;

  final Query$MediaFull$Media$title? title;

  final Query$MediaFull$Media$coverImage? coverImage;

  final String $__typename;

  final int? nextEpisode;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nextEpisode = nextEpisode;
    _resultData['nextEpisode'] = l$nextEpisode;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$nextEpisode = nextEpisode;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$$__typename,
      l$nextEpisode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaFull$Media || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$nextEpisode = nextEpisode;
    final lOther$nextEpisode = other.nextEpisode;
    if (l$nextEpisode != lOther$nextEpisode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MediaFull$Media on Query$MediaFull$Media {
  CopyWith$Query$MediaFull$Media<Query$MediaFull$Media> get copyWith =>
      CopyWith$Query$MediaFull$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaFull$Media<TRes> {
  factory CopyWith$Query$MediaFull$Media(
    Query$MediaFull$Media instance,
    TRes Function(Query$MediaFull$Media) then,
  ) = _CopyWithImpl$Query$MediaFull$Media;

  factory CopyWith$Query$MediaFull$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaFull$Media;

  TRes call({
    String? id,
    String? type,
    Query$MediaFull$Media$title? title,
    Query$MediaFull$Media$coverImage? coverImage,
    String? $__typename,
    int? nextEpisode,
  });
  CopyWith$Query$MediaFull$Media$title<TRes> get title;
  CopyWith$Query$MediaFull$Media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Query$MediaFull$Media<TRes>
    implements CopyWith$Query$MediaFull$Media<TRes> {
  _CopyWithImpl$Query$MediaFull$Media(
    this._instance,
    this._then,
  );

  final Query$MediaFull$Media _instance;

  final TRes Function(Query$MediaFull$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? nextEpisode = _undefined,
  }) =>
      _then(Query$MediaFull$Media(
        id: id == _undefined ? _instance.id : (id as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$MediaFull$Media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$MediaFull$Media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nextEpisode: nextEpisode == _undefined
            ? _instance.nextEpisode
            : (nextEpisode as int?),
      ));

  CopyWith$Query$MediaFull$Media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$MediaFull$Media$title.stub(_then(_instance))
        : CopyWith$Query$MediaFull$Media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$MediaFull$Media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$MediaFull$Media$coverImage.stub(_then(_instance))
        : CopyWith$Query$MediaFull$Media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$MediaFull$Media<TRes>
    implements CopyWith$Query$MediaFull$Media<TRes> {
  _CopyWithStubImpl$Query$MediaFull$Media(this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    Query$MediaFull$Media$title? title,
    Query$MediaFull$Media$coverImage? coverImage,
    String? $__typename,
    int? nextEpisode,
  }) =>
      _res;

  CopyWith$Query$MediaFull$Media$title<TRes> get title =>
      CopyWith$Query$MediaFull$Media$title.stub(_res);

  CopyWith$Query$MediaFull$Media$coverImage<TRes> get coverImage =>
      CopyWith$Query$MediaFull$Media$coverImage.stub(_res);
}

class Query$MediaFull$Media$title implements Fragment$MediaMinimalFrag$title {
  Query$MediaFull$Media$title({
    this.romaji,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$MediaFull$Media$title.fromJson(Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$MediaFull$Media$title(
      romaji: (l$romaji as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaFull$Media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Query$MediaFull$Media$title
    on Query$MediaFull$Media$title {
  CopyWith$Query$MediaFull$Media$title<Query$MediaFull$Media$title>
      get copyWith => CopyWith$Query$MediaFull$Media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaFull$Media$title<TRes> {
  factory CopyWith$Query$MediaFull$Media$title(
    Query$MediaFull$Media$title instance,
    TRes Function(Query$MediaFull$Media$title) then,
  ) = _CopyWithImpl$Query$MediaFull$Media$title;

  factory CopyWith$Query$MediaFull$Media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaFull$Media$title;

  TRes call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaFull$Media$title<TRes>
    implements CopyWith$Query$MediaFull$Media$title<TRes> {
  _CopyWithImpl$Query$MediaFull$Media$title(
    this._instance,
    this._then,
  );

  final Query$MediaFull$Media$title _instance;

  final TRes Function(Query$MediaFull$Media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaFull$Media$title(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaFull$Media$title<TRes>
    implements CopyWith$Query$MediaFull$Media$title<TRes> {
  _CopyWithStubImpl$Query$MediaFull$Media$title(this._res);

  TRes _res;

  call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaFull$Media$coverImage
    implements Fragment$MediaMinimalFrag$coverImage {
  Query$MediaFull$Media$coverImage({
    this.large,
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$MediaFull$Media$coverImage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$MediaFull$Media$coverImage(
      large: (l$large as String?),
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaFull$Media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Query$MediaFull$Media$coverImage
    on Query$MediaFull$Media$coverImage {
  CopyWith$Query$MediaFull$Media$coverImage<Query$MediaFull$Media$coverImage>
      get copyWith => CopyWith$Query$MediaFull$Media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaFull$Media$coverImage<TRes> {
  factory CopyWith$Query$MediaFull$Media$coverImage(
    Query$MediaFull$Media$coverImage instance,
    TRes Function(Query$MediaFull$Media$coverImage) then,
  ) = _CopyWithImpl$Query$MediaFull$Media$coverImage;

  factory CopyWith$Query$MediaFull$Media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaFull$Media$coverImage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaFull$Media$coverImage<TRes>
    implements CopyWith$Query$MediaFull$Media$coverImage<TRes> {
  _CopyWithImpl$Query$MediaFull$Media$coverImage(
    this._instance,
    this._then,
  );

  final Query$MediaFull$Media$coverImage _instance;

  final TRes Function(Query$MediaFull$Media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaFull$Media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaFull$Media$coverImage<TRes>
    implements CopyWith$Query$MediaFull$Media$coverImage<TRes> {
  _CopyWithStubImpl$Query$MediaFull$Media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
