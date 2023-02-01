import 'package:gql/ast.dart';

class Fragment$FullProfile {
  Fragment$FullProfile({
    required this.id,
    required this.featuredMedia,
    required this.$__typename,
  });

  factory Fragment$FullProfile.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$featuredMedia = json['featuredMedia'];
    final l$$__typename = json['__typename'];
    return Fragment$FullProfile(
      id: (l$id as String),
      featuredMedia: (l$featuredMedia as List<dynamic>)
          .map((e) => Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Fragment$Media> featuredMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$featuredMedia = featuredMedia;
    _resultData['featuredMedia'] =
        l$featuredMedia.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$featuredMedia = featuredMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$featuredMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FullProfile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$featuredMedia = featuredMedia;
    final lOther$featuredMedia = other.featuredMedia;
    if (l$featuredMedia.length != lOther$featuredMedia.length) {
      return false;
    }
    for (int i = 0; i < l$featuredMedia.length; i++) {
      final l$featuredMedia$entry = l$featuredMedia[i];
      final lOther$featuredMedia$entry = lOther$featuredMedia[i];
      if (l$featuredMedia$entry != lOther$featuredMedia$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FullProfile on Fragment$FullProfile {
  CopyWith$Fragment$FullProfile<Fragment$FullProfile> get copyWith =>
      CopyWith$Fragment$FullProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FullProfile<TRes> {
  factory CopyWith$Fragment$FullProfile(
    Fragment$FullProfile instance,
    TRes Function(Fragment$FullProfile) then,
  ) = _CopyWithImpl$Fragment$FullProfile;

  factory CopyWith$Fragment$FullProfile.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullProfile;

  TRes call({
    String? id,
    List<Fragment$Media>? featuredMedia,
    String? $__typename,
  });
  TRes featuredMedia(
      Iterable<Fragment$Media> Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>>)
          _fn);
}

class _CopyWithImpl$Fragment$FullProfile<TRes>
    implements CopyWith$Fragment$FullProfile<TRes> {
  _CopyWithImpl$Fragment$FullProfile(
    this._instance,
    this._then,
  );

  final Fragment$FullProfile _instance;

  final TRes Function(Fragment$FullProfile) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? featuredMedia = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullProfile(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        featuredMedia: featuredMedia == _undefined || featuredMedia == null
            ? _instance.featuredMedia
            : (featuredMedia as List<Fragment$Media>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes featuredMedia(
          Iterable<Fragment$Media> Function(
                  Iterable<CopyWith$Fragment$Media<Fragment$Media>>)
              _fn) =>
      call(
          featuredMedia:
              _fn(_instance.featuredMedia.map((e) => CopyWith$Fragment$Media(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$FullProfile<TRes>
    implements CopyWith$Fragment$FullProfile<TRes> {
  _CopyWithStubImpl$Fragment$FullProfile(this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment$Media>? featuredMedia,
    String? $__typename,
  }) =>
      _res;
  featuredMedia(_fn) => _res;
}

const fragmentDefinitionFullProfile = FragmentDefinitionNode(
  name: NameNode(value: 'FullProfile'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Profile'),
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
      name: NameNode(value: 'featuredMedia'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Media'),
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
);
const documentNodeFragmentFullProfile = DocumentNode(definitions: [
  fragmentDefinitionFullProfile,
  fragmentDefinitionMedia,
]);

class Fragment$Media {
  Fragment$Media({required this.$__typename});

  factory Fragment$Media.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Image":
        return Fragment$Media$$Image.fromJson(json);

      case "Video":
        return Fragment$Media$$Video.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Fragment$Media($__typename: (l$$__typename as String));
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
    if (!(other is Fragment$Media) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Media on Fragment$Media {
  CopyWith$Fragment$Media<Fragment$Media> get copyWith =>
      CopyWith$Fragment$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Media<TRes> {
  factory CopyWith$Fragment$Media(
    Fragment$Media instance,
    TRes Function(Fragment$Media) then,
  ) = _CopyWithImpl$Fragment$Media;

  factory CopyWith$Fragment$Media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Media;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$Media<TRes>
    implements CopyWith$Fragment$Media<TRes> {
  _CopyWithImpl$Fragment$Media(
    this._instance,
    this._then,
  );

  final Fragment$Media _instance;

  final TRes Function(Fragment$Media) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(Fragment$Media(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Media<TRes>
    implements CopyWith$Fragment$Media<TRes> {
  _CopyWithStubImpl$Fragment$Media(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

const fragmentDefinitionMedia = FragmentDefinitionNode(
  name: NameNode(value: 'Media'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    InlineFragmentNode(
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
        name: NameNode(value: 'Image'),
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
          name: NameNode(value: 'src'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'thumbnailSrc'),
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
    InlineFragmentNode(
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
        name: NameNode(value: 'Video'),
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
          name: NameNode(value: 'src'),
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
const documentNodeFragmentMedia = DocumentNode(definitions: [
  fragmentDefinitionMedia,
]);

class Fragment$Media$$Image implements Fragment$Media {
  Fragment$Media$$Image({
    required this.id,
    required this.src,
    required this.thumbnailSrc,
    required this.$__typename,
  });

  factory Fragment$Media$$Image.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$src = json['src'];
    final l$thumbnailSrc = json['thumbnailSrc'];
    final l$$__typename = json['__typename'];
    return Fragment$Media$$Image(
      id: (l$id as String),
      src: (l$src as String),
      thumbnailSrc: (l$thumbnailSrc as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String src;

  final String thumbnailSrc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$src = src;
    _resultData['src'] = l$src;
    final l$thumbnailSrc = thumbnailSrc;
    _resultData['thumbnailSrc'] = l$thumbnailSrc;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$src = src;
    final l$thumbnailSrc = thumbnailSrc;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$src,
      l$thumbnailSrc,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Media$$Image) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$src = src;
    final lOther$src = other.src;
    if (l$src != lOther$src) {
      return false;
    }
    final l$thumbnailSrc = thumbnailSrc;
    final lOther$thumbnailSrc = other.thumbnailSrc;
    if (l$thumbnailSrc != lOther$thumbnailSrc) {
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

extension UtilityExtension$Fragment$Media$$Image on Fragment$Media$$Image {
  CopyWith$Fragment$Media$$Image<Fragment$Media$$Image> get copyWith =>
      CopyWith$Fragment$Media$$Image(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Media$$Image<TRes> {
  factory CopyWith$Fragment$Media$$Image(
    Fragment$Media$$Image instance,
    TRes Function(Fragment$Media$$Image) then,
  ) = _CopyWithImpl$Fragment$Media$$Image;

  factory CopyWith$Fragment$Media$$Image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Media$$Image;

  TRes call({
    String? id,
    String? src,
    String? thumbnailSrc,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Media$$Image<TRes>
    implements CopyWith$Fragment$Media$$Image<TRes> {
  _CopyWithImpl$Fragment$Media$$Image(
    this._instance,
    this._then,
  );

  final Fragment$Media$$Image _instance;

  final TRes Function(Fragment$Media$$Image) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? src = _undefined,
    Object? thumbnailSrc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Media$$Image(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        src: src == _undefined || src == null ? _instance.src : (src as String),
        thumbnailSrc: thumbnailSrc == _undefined || thumbnailSrc == null
            ? _instance.thumbnailSrc
            : (thumbnailSrc as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Media$$Image<TRes>
    implements CopyWith$Fragment$Media$$Image<TRes> {
  _CopyWithStubImpl$Fragment$Media$$Image(this._res);

  TRes _res;

  call({
    String? id,
    String? src,
    String? thumbnailSrc,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Media$$Video implements Fragment$Media {
  Fragment$Media$$Video({
    required this.id,
    required this.src,
    required this.$__typename,
  });

  factory Fragment$Media$$Video.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$src = json['src'];
    final l$$__typename = json['__typename'];
    return Fragment$Media$$Video(
      id: (l$id as String),
      src: (l$src as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String src;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$src = src;
    _resultData['src'] = l$src;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$src = src;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$src,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Media$$Video) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$src = src;
    final lOther$src = other.src;
    if (l$src != lOther$src) {
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

extension UtilityExtension$Fragment$Media$$Video on Fragment$Media$$Video {
  CopyWith$Fragment$Media$$Video<Fragment$Media$$Video> get copyWith =>
      CopyWith$Fragment$Media$$Video(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Media$$Video<TRes> {
  factory CopyWith$Fragment$Media$$Video(
    Fragment$Media$$Video instance,
    TRes Function(Fragment$Media$$Video) then,
  ) = _CopyWithImpl$Fragment$Media$$Video;

  factory CopyWith$Fragment$Media$$Video.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Media$$Video;

  TRes call({
    String? id,
    String? src,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Media$$Video<TRes>
    implements CopyWith$Fragment$Media$$Video<TRes> {
  _CopyWithImpl$Fragment$Media$$Video(
    this._instance,
    this._then,
  );

  final Fragment$Media$$Video _instance;

  final TRes Function(Fragment$Media$$Video) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? src = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Media$$Video(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        src: src == _undefined || src == null ? _instance.src : (src as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Media$$Video<TRes>
    implements CopyWith$Fragment$Media$$Video<TRes> {
  _CopyWithStubImpl$Fragment$Media$$Video(this._res);

  TRes _res;

  call({
    String? id,
    String? src,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetFullProfile {
  factory Variables$Query$GetFullProfile({required String getId}) =>
      Variables$Query$GetFullProfile._({
        r'getId': getId,
      });

  Variables$Query$GetFullProfile._(this._$data);

  factory Variables$Query$GetFullProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$getId = data['getId'];
    result$data['getId'] = (l$getId as String);
    return Variables$Query$GetFullProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get getId => (_$data['getId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$getId = getId;
    result$data['getId'] = l$getId;
    return result$data;
  }

  CopyWith$Variables$Query$GetFullProfile<Variables$Query$GetFullProfile>
      get copyWith => CopyWith$Variables$Query$GetFullProfile(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFullProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getId = getId;
    final lOther$getId = other.getId;
    if (l$getId != lOther$getId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$getId = getId;
    return Object.hashAll([l$getId]);
  }
}

abstract class CopyWith$Variables$Query$GetFullProfile<TRes> {
  factory CopyWith$Variables$Query$GetFullProfile(
    Variables$Query$GetFullProfile instance,
    TRes Function(Variables$Query$GetFullProfile) then,
  ) = _CopyWithImpl$Variables$Query$GetFullProfile;

  factory CopyWith$Variables$Query$GetFullProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFullProfile;

  TRes call({String? getId});
}

class _CopyWithImpl$Variables$Query$GetFullProfile<TRes>
    implements CopyWith$Variables$Query$GetFullProfile<TRes> {
  _CopyWithImpl$Variables$Query$GetFullProfile(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFullProfile _instance;

  final TRes Function(Variables$Query$GetFullProfile) _then;

  static const _undefined = {};

  TRes call({Object? getId = _undefined}) =>
      _then(Variables$Query$GetFullProfile._({
        ..._instance._$data,
        if (getId != _undefined && getId != null) 'getId': (getId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFullProfile<TRes>
    implements CopyWith$Variables$Query$GetFullProfile<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFullProfile(this._res);

  TRes _res;

  call({String? getId}) => _res;
}

class Query$GetFullProfile {
  Query$GetFullProfile({
    this.profile,
    required this.$__typename,
  });

  factory Query$GetFullProfile.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Query$GetFullProfile(
      profile: l$profile == null
          ? null
          : Query$GetFullProfile$profile.fromJson(
              (l$profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetFullProfile$profile? profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFullProfile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
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

extension UtilityExtension$Query$GetFullProfile on Query$GetFullProfile {
  CopyWith$Query$GetFullProfile<Query$GetFullProfile> get copyWith =>
      CopyWith$Query$GetFullProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFullProfile<TRes> {
  factory CopyWith$Query$GetFullProfile(
    Query$GetFullProfile instance,
    TRes Function(Query$GetFullProfile) then,
  ) = _CopyWithImpl$Query$GetFullProfile;

  factory CopyWith$Query$GetFullProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFullProfile;

  TRes call({
    Query$GetFullProfile$profile? profile,
    String? $__typename,
  });
  CopyWith$Query$GetFullProfile$profile<TRes> get profile;
}

class _CopyWithImpl$Query$GetFullProfile<TRes>
    implements CopyWith$Query$GetFullProfile<TRes> {
  _CopyWithImpl$Query$GetFullProfile(
    this._instance,
    this._then,
  );

  final Query$GetFullProfile _instance;

  final TRes Function(Query$GetFullProfile) _then;

  static const _undefined = {};

  TRes call({
    Object? profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFullProfile(
        profile: profile == _undefined
            ? _instance.profile
            : (profile as Query$GetFullProfile$profile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetFullProfile$profile<TRes> get profile {
    final local$profile = _instance.profile;
    return local$profile == null
        ? CopyWith$Query$GetFullProfile$profile.stub(_then(_instance))
        : CopyWith$Query$GetFullProfile$profile(
            local$profile, (e) => call(profile: e));
  }
}

class _CopyWithStubImpl$Query$GetFullProfile<TRes>
    implements CopyWith$Query$GetFullProfile<TRes> {
  _CopyWithStubImpl$Query$GetFullProfile(this._res);

  TRes _res;

  call({
    Query$GetFullProfile$profile? profile,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetFullProfile$profile<TRes> get profile =>
      CopyWith$Query$GetFullProfile$profile.stub(_res);
}

const documentNodeQueryGetFullProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFullProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'profile'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'get'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'getId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FullProfile'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionFullProfile,
  fragmentDefinitionMedia,
]);

class Query$GetFullProfile$profile {
  Query$GetFullProfile$profile({
    this.$get,
    required this.$__typename,
  });

  factory Query$GetFullProfile$profile.fromJson(Map<String, dynamic> json) {
    final l$$get = json['get'];
    final l$$__typename = json['__typename'];
    return Query$GetFullProfile$profile(
      $get: l$$get == null
          ? null
          : Fragment$FullProfile.fromJson((l$$get as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullProfile? $get;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$get = $get;
    _resultData['get'] = l$$get?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$get = $get;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$get,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFullProfile$profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$get = $get;
    final lOther$$get = other.$get;
    if (l$$get != lOther$$get) {
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

extension UtilityExtension$Query$GetFullProfile$profile
    on Query$GetFullProfile$profile {
  CopyWith$Query$GetFullProfile$profile<Query$GetFullProfile$profile>
      get copyWith => CopyWith$Query$GetFullProfile$profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFullProfile$profile<TRes> {
  factory CopyWith$Query$GetFullProfile$profile(
    Query$GetFullProfile$profile instance,
    TRes Function(Query$GetFullProfile$profile) then,
  ) = _CopyWithImpl$Query$GetFullProfile$profile;

  factory CopyWith$Query$GetFullProfile$profile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFullProfile$profile;

  TRes call({
    Fragment$FullProfile? $get,
    String? $__typename,
  });
  CopyWith$Fragment$FullProfile<TRes> get $get;
}

class _CopyWithImpl$Query$GetFullProfile$profile<TRes>
    implements CopyWith$Query$GetFullProfile$profile<TRes> {
  _CopyWithImpl$Query$GetFullProfile$profile(
    this._instance,
    this._then,
  );

  final Query$GetFullProfile$profile _instance;

  final TRes Function(Query$GetFullProfile$profile) _then;

  static const _undefined = {};

  TRes call({
    Object? $get = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFullProfile$profile(
        $get: $get == _undefined
            ? _instance.$get
            : ($get as Fragment$FullProfile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FullProfile<TRes> get $get {
    final local$$get = _instance.$get;
    return local$$get == null
        ? CopyWith$Fragment$FullProfile.stub(_then(_instance))
        : CopyWith$Fragment$FullProfile(local$$get, (e) => call($get: e));
  }
}

class _CopyWithStubImpl$Query$GetFullProfile$profile<TRes>
    implements CopyWith$Query$GetFullProfile$profile<TRes> {
  _CopyWithStubImpl$Query$GetFullProfile$profile(this._res);

  TRes _res;

  call({
    Fragment$FullProfile? $get,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FullProfile<TRes> get $get =>
      CopyWith$Fragment$FullProfile.stub(_res);
}

const possibleTypesMap = {
  'Media': {
    'Image',
    'Video',
  }
};
