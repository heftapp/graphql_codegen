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

class Fragment$FullFriendRequestNotification {
  Fragment$FullFriendRequestNotification({
    required this.requesterUsername,
    this.$__typename = 'FriendRequestNotification',
  });

  factory Fragment$FullFriendRequestNotification.fromJson(
      Map<String, dynamic> json) {
    final l$requesterUsername = json['requesterUsername'];
    final l$$__typename = json['__typename'];
    return Fragment$FullFriendRequestNotification(
      requesterUsername: (l$requesterUsername as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String requesterUsername;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$requesterUsername = requesterUsername;
    _resultData['requesterUsername'] = l$requesterUsername;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$requesterUsername = requesterUsername;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$requesterUsername,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullFriendRequestNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requesterUsername = requesterUsername;
    final lOther$requesterUsername = other.requesterUsername;
    if (l$requesterUsername != lOther$requesterUsername) {
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

extension UtilityExtension$Fragment$FullFriendRequestNotification
    on Fragment$FullFriendRequestNotification {
  CopyWith$Fragment$FullFriendRequestNotification<
          Fragment$FullFriendRequestNotification>
      get copyWith => CopyWith$Fragment$FullFriendRequestNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullFriendRequestNotification<TRes> {
  factory CopyWith$Fragment$FullFriendRequestNotification(
    Fragment$FullFriendRequestNotification instance,
    TRes Function(Fragment$FullFriendRequestNotification) then,
  ) = _CopyWithImpl$Fragment$FullFriendRequestNotification;

  factory CopyWith$Fragment$FullFriendRequestNotification.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullFriendRequestNotification;

  TRes call({
    String? requesterUsername,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullFriendRequestNotification<TRes>
    implements CopyWith$Fragment$FullFriendRequestNotification<TRes> {
  _CopyWithImpl$Fragment$FullFriendRequestNotification(
    this._instance,
    this._then,
  );

  final Fragment$FullFriendRequestNotification _instance;

  final TRes Function(Fragment$FullFriendRequestNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requesterUsername = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullFriendRequestNotification(
        requesterUsername:
            requesterUsername == _undefined || requesterUsername == null
                ? _instance.requesterUsername
                : (requesterUsername as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullFriendRequestNotification<TRes>
    implements CopyWith$Fragment$FullFriendRequestNotification<TRes> {
  _CopyWithStubImpl$Fragment$FullFriendRequestNotification(this._res);

  TRes _res;

  call({
    String? requesterUsername,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionFullFriendRequestNotification = FragmentDefinitionNode(
  name: NameNode(value: 'FullFriendRequestNotification'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FriendRequestNotification'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'requesterUsername'),
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
const documentNodeFragmentFullFriendRequestNotification =
    DocumentNode(definitions: [
  fragmentDefinitionFullFriendRequestNotification,
]);

class Fragment$FullNewsNotification {
  Fragment$FullNewsNotification({
    required this.newsId,
    this.$__typename = 'NewsNotification',
  });

  factory Fragment$FullNewsNotification.fromJson(Map<String, dynamic> json) {
    final l$newsId = json['newsId'];
    final l$$__typename = json['__typename'];
    return Fragment$FullNewsNotification(
      newsId: (l$newsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String newsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newsId = newsId;
    _resultData['newsId'] = l$newsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newsId = newsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullNewsNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newsId = newsId;
    final lOther$newsId = other.newsId;
    if (l$newsId != lOther$newsId) {
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

extension UtilityExtension$Fragment$FullNewsNotification
    on Fragment$FullNewsNotification {
  CopyWith$Fragment$FullNewsNotification<Fragment$FullNewsNotification>
      get copyWith => CopyWith$Fragment$FullNewsNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullNewsNotification<TRes> {
  factory CopyWith$Fragment$FullNewsNotification(
    Fragment$FullNewsNotification instance,
    TRes Function(Fragment$FullNewsNotification) then,
  ) = _CopyWithImpl$Fragment$FullNewsNotification;

  factory CopyWith$Fragment$FullNewsNotification.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullNewsNotification;

  TRes call({
    String? newsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullNewsNotification<TRes>
    implements CopyWith$Fragment$FullNewsNotification<TRes> {
  _CopyWithImpl$Fragment$FullNewsNotification(
    this._instance,
    this._then,
  );

  final Fragment$FullNewsNotification _instance;

  final TRes Function(Fragment$FullNewsNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newsId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullNewsNotification(
        newsId: newsId == _undefined || newsId == null
            ? _instance.newsId
            : (newsId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullNewsNotification<TRes>
    implements CopyWith$Fragment$FullNewsNotification<TRes> {
  _CopyWithStubImpl$Fragment$FullNewsNotification(this._res);

  TRes _res;

  call({
    String? newsId,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionFullNewsNotification = FragmentDefinitionNode(
  name: NameNode(value: 'FullNewsNotification'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'NewsNotification'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'newsId'),
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
const documentNodeFragmentFullNewsNotification = DocumentNode(definitions: [
  fragmentDefinitionFullNewsNotification,
]);

class Fragment$FullUser {
  Fragment$FullUser({
    required this.username,
    this.email,
    this.sex,
    this.age,
    this.notifications,
    this.$__typename = 'User',
  });

  factory Fragment$FullUser.fromJson(Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$email = json['email'];
    final l$sex = json['sex'];
    final l$age = json['age'];
    final l$notifications = json['notifications'];
    final l$$__typename = json['__typename'];
    return Fragment$FullUser(
      username: (l$username as String),
      email: (l$email as String?),
      sex: (l$sex as String?),
      age: (l$age as int?),
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => Fragment$FullUser$notifications.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String username;

  final String? email;

  final String? sex;

  final int? age;

  final List<Fragment$FullUser$notifications>? notifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$email = email;
    final l$sex = sex;
    final l$age = age;
    final l$notifications = notifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$email,
      l$sex,
      l$age,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) {
        return false;
      }
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) {
          return false;
        }
      }
    } else if (l$notifications != lOther$notifications) {
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

extension UtilityExtension$Fragment$FullUser on Fragment$FullUser {
  CopyWith$Fragment$FullUser<Fragment$FullUser> get copyWith =>
      CopyWith$Fragment$FullUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FullUser<TRes> {
  factory CopyWith$Fragment$FullUser(
    Fragment$FullUser instance,
    TRes Function(Fragment$FullUser) then,
  ) = _CopyWithImpl$Fragment$FullUser;

  factory CopyWith$Fragment$FullUser.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullUser;

  TRes call({
    String? username,
    String? email,
    String? sex,
    int? age,
    List<Fragment$FullUser$notifications>? notifications,
    String? $__typename,
  });
  TRes notifications(
      Iterable<Fragment$FullUser$notifications>? Function(
              Iterable<
                  CopyWith$Fragment$FullUser$notifications<
                      Fragment$FullUser$notifications>>?)
          _fn);
}

class _CopyWithImpl$Fragment$FullUser<TRes>
    implements CopyWith$Fragment$FullUser<TRes> {
  _CopyWithImpl$Fragment$FullUser(
    this._instance,
    this._then,
  );

  final Fragment$FullUser _instance;

  final TRes Function(Fragment$FullUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? email = _undefined,
    Object? sex = _undefined,
    Object? age = _undefined,
    Object? notifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullUser(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        email: email == _undefined ? _instance.email : (email as String?),
        sex: sex == _undefined ? _instance.sex : (sex as String?),
        age: age == _undefined ? _instance.age : (age as int?),
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications as List<Fragment$FullUser$notifications>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes notifications(
          Iterable<Fragment$FullUser$notifications>? Function(
                  Iterable<
                      CopyWith$Fragment$FullUser$notifications<
                          Fragment$FullUser$notifications>>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications
              ?.map((e) => CopyWith$Fragment$FullUser$notifications(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Fragment$FullUser<TRes>
    implements CopyWith$Fragment$FullUser<TRes> {
  _CopyWithStubImpl$Fragment$FullUser(this._res);

  TRes _res;

  call({
    String? username,
    String? email,
    String? sex,
    int? age,
    List<Fragment$FullUser$notifications>? notifications,
    String? $__typename,
  }) =>
      _res;

  notifications(_fn) => _res;
}

const fragmentDefinitionFullUser = FragmentDefinitionNode(
  name: NameNode(value: 'FullUser'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'username'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sex'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'age'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'notifications'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FullFriendRequestNotification'),
          directives: [],
        ),
        FragmentSpreadNode(
          name: NameNode(value: 'FullNewsNotification'),
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
const documentNodeFragmentFullUser = DocumentNode(definitions: [
  fragmentDefinitionFullUser,
  fragmentDefinitionFullFriendRequestNotification,
  fragmentDefinitionFullNewsNotification,
]);

class Fragment$FullUser$notifications {
  Fragment$FullUser$notifications({required this.$__typename});

  factory Fragment$FullUser$notifications.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FriendRequestNotification":
        return Fragment$FullUser$notifications$$FriendRequestNotification
            .fromJson(json);

      case "NewsNotification":
        return Fragment$FullUser$notifications$$NewsNotification.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Fragment$FullUser$notifications(
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
    if (other is! Fragment$FullUser$notifications ||
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

extension UtilityExtension$Fragment$FullUser$notifications
    on Fragment$FullUser$notifications {
  CopyWith$Fragment$FullUser$notifications<Fragment$FullUser$notifications>
      get copyWith => CopyWith$Fragment$FullUser$notifications(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Fragment$FullUser$notifications$$FriendRequestNotification)
        friendRequestNotification,
    required _T Function(Fragment$FullUser$notifications$$NewsNotification)
        newsNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FriendRequestNotification":
        return friendRequestNotification(
            this as Fragment$FullUser$notifications$$FriendRequestNotification);

      case "NewsNotification":
        return newsNotification(
            this as Fragment$FullUser$notifications$$NewsNotification);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$FullUser$notifications$$FriendRequestNotification)?
        friendRequestNotification,
    _T Function(Fragment$FullUser$notifications$$NewsNotification)?
        newsNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FriendRequestNotification":
        if (friendRequestNotification != null) {
          return friendRequestNotification(this
              as Fragment$FullUser$notifications$$FriendRequestNotification);
        } else {
          return orElse();
        }

      case "NewsNotification":
        if (newsNotification != null) {
          return newsNotification(
              this as Fragment$FullUser$notifications$$NewsNotification);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$FullUser$notifications<TRes> {
  factory CopyWith$Fragment$FullUser$notifications(
    Fragment$FullUser$notifications instance,
    TRes Function(Fragment$FullUser$notifications) then,
  ) = _CopyWithImpl$Fragment$FullUser$notifications;

  factory CopyWith$Fragment$FullUser$notifications.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FullUser$notifications;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$FullUser$notifications<TRes>
    implements CopyWith$Fragment$FullUser$notifications<TRes> {
  _CopyWithImpl$Fragment$FullUser$notifications(
    this._instance,
    this._then,
  );

  final Fragment$FullUser$notifications _instance;

  final TRes Function(Fragment$FullUser$notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Fragment$FullUser$notifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$FullUser$notifications<TRes>
    implements CopyWith$Fragment$FullUser$notifications<TRes> {
  _CopyWithStubImpl$Fragment$FullUser$notifications(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Fragment$FullUser$notifications$$FriendRequestNotification
    implements
        Fragment$FullFriendRequestNotification,
        Fragment$FullUser$notifications {
  Fragment$FullUser$notifications$$FriendRequestNotification({
    required this.requesterUsername,
    this.$__typename = 'FriendRequestNotification',
  });

  factory Fragment$FullUser$notifications$$FriendRequestNotification.fromJson(
      Map<String, dynamic> json) {
    final l$requesterUsername = json['requesterUsername'];
    final l$$__typename = json['__typename'];
    return Fragment$FullUser$notifications$$FriendRequestNotification(
      requesterUsername: (l$requesterUsername as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String requesterUsername;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$requesterUsername = requesterUsername;
    _resultData['requesterUsername'] = l$requesterUsername;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$requesterUsername = requesterUsername;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$requesterUsername,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullUser$notifications$$FriendRequestNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requesterUsername = requesterUsername;
    final lOther$requesterUsername = other.requesterUsername;
    if (l$requesterUsername != lOther$requesterUsername) {
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

extension UtilityExtension$Fragment$FullUser$notifications$$FriendRequestNotification
    on Fragment$FullUser$notifications$$FriendRequestNotification {
  CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification<
          Fragment$FullUser$notifications$$FriendRequestNotification>
      get copyWith =>
          CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification<
    TRes> {
  factory CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification(
    Fragment$FullUser$notifications$$FriendRequestNotification instance,
    TRes Function(Fragment$FullUser$notifications$$FriendRequestNotification)
        then,
  ) = _CopyWithImpl$Fragment$FullUser$notifications$$FriendRequestNotification;

  factory CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullUser$notifications$$FriendRequestNotification;

  TRes call({
    String? requesterUsername,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullUser$notifications$$FriendRequestNotification<
        TRes>
    implements
        CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification<
            TRes> {
  _CopyWithImpl$Fragment$FullUser$notifications$$FriendRequestNotification(
    this._instance,
    this._then,
  );

  final Fragment$FullUser$notifications$$FriendRequestNotification _instance;

  final TRes Function(
      Fragment$FullUser$notifications$$FriendRequestNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requesterUsername = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullUser$notifications$$FriendRequestNotification(
        requesterUsername:
            requesterUsername == _undefined || requesterUsername == null
                ? _instance.requesterUsername
                : (requesterUsername as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullUser$notifications$$FriendRequestNotification<
        TRes>
    implements
        CopyWith$Fragment$FullUser$notifications$$FriendRequestNotification<
            TRes> {
  _CopyWithStubImpl$Fragment$FullUser$notifications$$FriendRequestNotification(
      this._res);

  TRes _res;

  call({
    String? requesterUsername,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FullUser$notifications$$NewsNotification
    implements Fragment$FullNewsNotification, Fragment$FullUser$notifications {
  Fragment$FullUser$notifications$$NewsNotification({
    required this.newsId,
    this.$__typename = 'NewsNotification',
  });

  factory Fragment$FullUser$notifications$$NewsNotification.fromJson(
      Map<String, dynamic> json) {
    final l$newsId = json['newsId'];
    final l$$__typename = json['__typename'];
    return Fragment$FullUser$notifications$$NewsNotification(
      newsId: (l$newsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String newsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newsId = newsId;
    _resultData['newsId'] = l$newsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newsId = newsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FullUser$notifications$$NewsNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newsId = newsId;
    final lOther$newsId = other.newsId;
    if (l$newsId != lOther$newsId) {
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

extension UtilityExtension$Fragment$FullUser$notifications$$NewsNotification
    on Fragment$FullUser$notifications$$NewsNotification {
  CopyWith$Fragment$FullUser$notifications$$NewsNotification<
          Fragment$FullUser$notifications$$NewsNotification>
      get copyWith =>
          CopyWith$Fragment$FullUser$notifications$$NewsNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FullUser$notifications$$NewsNotification<
    TRes> {
  factory CopyWith$Fragment$FullUser$notifications$$NewsNotification(
    Fragment$FullUser$notifications$$NewsNotification instance,
    TRes Function(Fragment$FullUser$notifications$$NewsNotification) then,
  ) = _CopyWithImpl$Fragment$FullUser$notifications$$NewsNotification;

  factory CopyWith$Fragment$FullUser$notifications$$NewsNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FullUser$notifications$$NewsNotification;

  TRes call({
    String? newsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FullUser$notifications$$NewsNotification<TRes>
    implements
        CopyWith$Fragment$FullUser$notifications$$NewsNotification<TRes> {
  _CopyWithImpl$Fragment$FullUser$notifications$$NewsNotification(
    this._instance,
    this._then,
  );

  final Fragment$FullUser$notifications$$NewsNotification _instance;

  final TRes Function(Fragment$FullUser$notifications$$NewsNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newsId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FullUser$notifications$$NewsNotification(
        newsId: newsId == _undefined || newsId == null
            ? _instance.newsId
            : (newsId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FullUser$notifications$$NewsNotification<TRes>
    implements
        CopyWith$Fragment$FullUser$notifications$$NewsNotification<TRes> {
  _CopyWithStubImpl$Fragment$FullUser$notifications$$NewsNotification(
      this._res);

  TRes _res;

  call({
    String? newsId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetUser {
  factory Variables$Query$GetUser({required String username}) =>
      Variables$Query$GetUser._({
        r'username': username,
      });

  Variables$Query$GetUser._(this._$data);

  factory Variables$Query$GetUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Query$GetUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Query$GetUser<Variables$Query$GetUser> get copyWith =>
      CopyWith$Variables$Query$GetUser(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    return Object.hashAll([l$username]);
  }
}

abstract class CopyWith$Variables$Query$GetUser<TRes> {
  factory CopyWith$Variables$Query$GetUser(
    Variables$Query$GetUser instance,
    TRes Function(Variables$Query$GetUser) then,
  ) = _CopyWithImpl$Variables$Query$GetUser;

  factory CopyWith$Variables$Query$GetUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUser;

  TRes call({String? username});
}

class _CopyWithImpl$Variables$Query$GetUser<TRes>
    implements CopyWith$Variables$Query$GetUser<TRes> {
  _CopyWithImpl$Variables$Query$GetUser(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUser _instance;

  final TRes Function(Variables$Query$GetUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? username = _undefined}) =>
      _then(Variables$Query$GetUser._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUser<TRes>
    implements CopyWith$Variables$Query$GetUser<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUser(this._res);

  TRes _res;

  call({String? username}) => _res;
}

class Query$GetUser {
  Query$GetUser({
    this.getUser,
    this.$__typename = 'Query',
  });

  factory Query$GetUser.fromJson(Map<String, dynamic> json) {
    final l$getUser = json['getUser'];
    final l$$__typename = json['__typename'];
    return Query$GetUser(
      getUser: l$getUser == null
          ? null
          : Fragment$FullUser.fromJson((l$getUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FullUser? getUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getUser = getUser;
    _resultData['getUser'] = l$getUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) {
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

extension UtilityExtension$Query$GetUser on Query$GetUser {
  CopyWith$Query$GetUser<Query$GetUser> get copyWith => CopyWith$Query$GetUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUser<TRes> {
  factory CopyWith$Query$GetUser(
    Query$GetUser instance,
    TRes Function(Query$GetUser) then,
  ) = _CopyWithImpl$Query$GetUser;

  factory CopyWith$Query$GetUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser;

  TRes call({
    Fragment$FullUser? getUser,
    String? $__typename,
  });
  CopyWith$Fragment$FullUser<TRes> get getUser;
}

class _CopyWithImpl$Query$GetUser<TRes>
    implements CopyWith$Query$GetUser<TRes> {
  _CopyWithImpl$Query$GetUser(
    this._instance,
    this._then,
  );

  final Query$GetUser _instance;

  final TRes Function(Query$GetUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser(
        getUser: getUser == _undefined
            ? _instance.getUser
            : (getUser as Fragment$FullUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FullUser<TRes> get getUser {
    final local$getUser = _instance.getUser;
    return local$getUser == null
        ? CopyWith$Fragment$FullUser.stub(_then(_instance))
        : CopyWith$Fragment$FullUser(local$getUser, (e) => call(getUser: e));
  }
}

class _CopyWithStubImpl$Query$GetUser<TRes>
    implements CopyWith$Query$GetUser<TRes> {
  _CopyWithStubImpl$Query$GetUser(this._res);

  TRes _res;

  call({
    Fragment$FullUser? getUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FullUser<TRes> get getUser =>
      CopyWith$Fragment$FullUser.stub(_res);
}

const documentNodeQueryGetUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
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
        name: NameNode(value: 'getUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'FullUser'),
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
  fragmentDefinitionFullUser,
  fragmentDefinitionFullFriendRequestNotification,
  fragmentDefinitionFullNewsNotification,
]);

class Variables$Query$GetNotifications {
  factory Variables$Query$GetNotifications({required String username}) =>
      Variables$Query$GetNotifications._({
        r'username': username,
      });

  Variables$Query$GetNotifications._(this._$data);

  factory Variables$Query$GetNotifications.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Query$GetNotifications._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Query$GetNotifications<Variables$Query$GetNotifications>
      get copyWith => CopyWith$Variables$Query$GetNotifications(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetNotifications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    return Object.hashAll([l$username]);
  }
}

abstract class CopyWith$Variables$Query$GetNotifications<TRes> {
  factory CopyWith$Variables$Query$GetNotifications(
    Variables$Query$GetNotifications instance,
    TRes Function(Variables$Query$GetNotifications) then,
  ) = _CopyWithImpl$Variables$Query$GetNotifications;

  factory CopyWith$Variables$Query$GetNotifications.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetNotifications;

  TRes call({String? username});
}

class _CopyWithImpl$Variables$Query$GetNotifications<TRes>
    implements CopyWith$Variables$Query$GetNotifications<TRes> {
  _CopyWithImpl$Variables$Query$GetNotifications(
    this._instance,
    this._then,
  );

  final Variables$Query$GetNotifications _instance;

  final TRes Function(Variables$Query$GetNotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? username = _undefined}) =>
      _then(Variables$Query$GetNotifications._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetNotifications<TRes>
    implements CopyWith$Variables$Query$GetNotifications<TRes> {
  _CopyWithStubImpl$Variables$Query$GetNotifications(this._res);

  TRes _res;

  call({String? username}) => _res;
}

class Query$GetNotifications {
  Query$GetNotifications({
    this.getUser,
    this.$__typename = 'Query',
  });

  factory Query$GetNotifications.fromJson(Map<String, dynamic> json) {
    final l$getUser = json['getUser'];
    final l$$__typename = json['__typename'];
    return Query$GetNotifications(
      getUser: l$getUser == null
          ? null
          : Query$GetNotifications$getUser.fromJson(
              (l$getUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetNotifications$getUser? getUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getUser = getUser;
    _resultData['getUser'] = l$getUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetNotifications || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) {
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

extension UtilityExtension$Query$GetNotifications on Query$GetNotifications {
  CopyWith$Query$GetNotifications<Query$GetNotifications> get copyWith =>
      CopyWith$Query$GetNotifications(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetNotifications<TRes> {
  factory CopyWith$Query$GetNotifications(
    Query$GetNotifications instance,
    TRes Function(Query$GetNotifications) then,
  ) = _CopyWithImpl$Query$GetNotifications;

  factory CopyWith$Query$GetNotifications.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNotifications;

  TRes call({
    Query$GetNotifications$getUser? getUser,
    String? $__typename,
  });
  CopyWith$Query$GetNotifications$getUser<TRes> get getUser;
}

class _CopyWithImpl$Query$GetNotifications<TRes>
    implements CopyWith$Query$GetNotifications<TRes> {
  _CopyWithImpl$Query$GetNotifications(
    this._instance,
    this._then,
  );

  final Query$GetNotifications _instance;

  final TRes Function(Query$GetNotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNotifications(
        getUser: getUser == _undefined
            ? _instance.getUser
            : (getUser as Query$GetNotifications$getUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetNotifications$getUser<TRes> get getUser {
    final local$getUser = _instance.getUser;
    return local$getUser == null
        ? CopyWith$Query$GetNotifications$getUser.stub(_then(_instance))
        : CopyWith$Query$GetNotifications$getUser(
            local$getUser, (e) => call(getUser: e));
  }
}

class _CopyWithStubImpl$Query$GetNotifications<TRes>
    implements CopyWith$Query$GetNotifications<TRes> {
  _CopyWithStubImpl$Query$GetNotifications(this._res);

  TRes _res;

  call({
    Query$GetNotifications$getUser? getUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetNotifications$getUser<TRes> get getUser =>
      CopyWith$Query$GetNotifications$getUser.stub(_res);
}

const documentNodeQueryGetNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetNotifications'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
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
        name: NameNode(value: 'getUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'notifications'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FullFriendRequestNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'FullNewsNotification'),
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
  fragmentDefinitionFullFriendRequestNotification,
  fragmentDefinitionFullNewsNotification,
]);

class Query$GetNotifications$getUser {
  Query$GetNotifications$getUser({
    this.$__typename = 'User',
    required this.username,
    this.notifications,
  });

  factory Query$GetNotifications$getUser.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$username = json['username'];
    final l$notifications = json['notifications'];
    return Query$GetNotifications$getUser(
      $__typename: (l$$__typename as String),
      username: (l$username as String),
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => Query$GetNotifications$getUser$notifications.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final String username;

  final List<Query$GetNotifications$getUser$notifications>? notifications;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$username = username;
    final l$notifications = notifications;
    return Object.hashAll([
      l$$__typename,
      l$username,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetNotifications$getUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) {
        return false;
      }
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) {
          return false;
        }
      }
    } else if (l$notifications != lOther$notifications) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetNotifications$getUser
    on Query$GetNotifications$getUser {
  CopyWith$Query$GetNotifications$getUser<Query$GetNotifications$getUser>
      get copyWith => CopyWith$Query$GetNotifications$getUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNotifications$getUser<TRes> {
  factory CopyWith$Query$GetNotifications$getUser(
    Query$GetNotifications$getUser instance,
    TRes Function(Query$GetNotifications$getUser) then,
  ) = _CopyWithImpl$Query$GetNotifications$getUser;

  factory CopyWith$Query$GetNotifications$getUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNotifications$getUser;

  TRes call({
    String? $__typename,
    String? username,
    List<Query$GetNotifications$getUser$notifications>? notifications,
  });
  TRes notifications(
      Iterable<Query$GetNotifications$getUser$notifications>? Function(
              Iterable<
                  CopyWith$Query$GetNotifications$getUser$notifications<
                      Query$GetNotifications$getUser$notifications>>?)
          _fn);
}

class _CopyWithImpl$Query$GetNotifications$getUser<TRes>
    implements CopyWith$Query$GetNotifications$getUser<TRes> {
  _CopyWithImpl$Query$GetNotifications$getUser(
    this._instance,
    this._then,
  );

  final Query$GetNotifications$getUser _instance;

  final TRes Function(Query$GetNotifications$getUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? username = _undefined,
    Object? notifications = _undefined,
  }) =>
      _then(Query$GetNotifications$getUser(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications
                as List<Query$GetNotifications$getUser$notifications>?),
      ));

  TRes notifications(
          Iterable<Query$GetNotifications$getUser$notifications>? Function(
                  Iterable<
                      CopyWith$Query$GetNotifications$getUser$notifications<
                          Query$GetNotifications$getUser$notifications>>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map(
              (e) => CopyWith$Query$GetNotifications$getUser$notifications(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetNotifications$getUser<TRes>
    implements CopyWith$Query$GetNotifications$getUser<TRes> {
  _CopyWithStubImpl$Query$GetNotifications$getUser(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? username,
    List<Query$GetNotifications$getUser$notifications>? notifications,
  }) =>
      _res;

  notifications(_fn) => _res;
}

class Query$GetNotifications$getUser$notifications {
  Query$GetNotifications$getUser$notifications({required this.$__typename});

  factory Query$GetNotifications$getUser$notifications.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FriendRequestNotification":
        return Query$GetNotifications$getUser$notifications$$FriendRequestNotification
            .fromJson(json);

      case "NewsNotification":
        return Query$GetNotifications$getUser$notifications$$NewsNotification
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetNotifications$getUser$notifications(
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
    if (other is! Query$GetNotifications$getUser$notifications ||
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

extension UtilityExtension$Query$GetNotifications$getUser$notifications
    on Query$GetNotifications$getUser$notifications {
  CopyWith$Query$GetNotifications$getUser$notifications<
          Query$GetNotifications$getUser$notifications>
      get copyWith => CopyWith$Query$GetNotifications$getUser$notifications(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$GetNotifications$getUser$notifications$$FriendRequestNotification)
        friendRequestNotification,
    required _T Function(
            Query$GetNotifications$getUser$notifications$$NewsNotification)
        newsNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FriendRequestNotification":
        return friendRequestNotification(this
            as Query$GetNotifications$getUser$notifications$$FriendRequestNotification);

      case "NewsNotification":
        return newsNotification(this
            as Query$GetNotifications$getUser$notifications$$NewsNotification);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$GetNotifications$getUser$notifications$$FriendRequestNotification)?
        friendRequestNotification,
    _T Function(Query$GetNotifications$getUser$notifications$$NewsNotification)?
        newsNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FriendRequestNotification":
        if (friendRequestNotification != null) {
          return friendRequestNotification(this
              as Query$GetNotifications$getUser$notifications$$FriendRequestNotification);
        } else {
          return orElse();
        }

      case "NewsNotification":
        if (newsNotification != null) {
          return newsNotification(this
              as Query$GetNotifications$getUser$notifications$$NewsNotification);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetNotifications$getUser$notifications<TRes> {
  factory CopyWith$Query$GetNotifications$getUser$notifications(
    Query$GetNotifications$getUser$notifications instance,
    TRes Function(Query$GetNotifications$getUser$notifications) then,
  ) = _CopyWithImpl$Query$GetNotifications$getUser$notifications;

  factory CopyWith$Query$GetNotifications$getUser$notifications.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNotifications$getUser$notifications;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetNotifications$getUser$notifications<TRes>
    implements CopyWith$Query$GetNotifications$getUser$notifications<TRes> {
  _CopyWithImpl$Query$GetNotifications$getUser$notifications(
    this._instance,
    this._then,
  );

  final Query$GetNotifications$getUser$notifications _instance;

  final TRes Function(Query$GetNotifications$getUser$notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetNotifications$getUser$notifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetNotifications$getUser$notifications<TRes>
    implements CopyWith$Query$GetNotifications$getUser$notifications<TRes> {
  _CopyWithStubImpl$Query$GetNotifications$getUser$notifications(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetNotifications$getUser$notifications$$FriendRequestNotification
    implements
        Fragment$FullFriendRequestNotification,
        Query$GetNotifications$getUser$notifications {
  Query$GetNotifications$getUser$notifications$$FriendRequestNotification({
    required this.requesterUsername,
    this.$__typename = 'FriendRequestNotification',
  });

  factory Query$GetNotifications$getUser$notifications$$FriendRequestNotification.fromJson(
      Map<String, dynamic> json) {
    final l$requesterUsername = json['requesterUsername'];
    final l$$__typename = json['__typename'];
    return Query$GetNotifications$getUser$notifications$$FriendRequestNotification(
      requesterUsername: (l$requesterUsername as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String requesterUsername;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$requesterUsername = requesterUsername;
    _resultData['requesterUsername'] = l$requesterUsername;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$requesterUsername = requesterUsername;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$requesterUsername,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetNotifications$getUser$notifications$$FriendRequestNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requesterUsername = requesterUsername;
    final lOther$requesterUsername = other.requesterUsername;
    if (l$requesterUsername != lOther$requesterUsername) {
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

extension UtilityExtension$Query$GetNotifications$getUser$notifications$$FriendRequestNotification
    on Query$GetNotifications$getUser$notifications$$FriendRequestNotification {
  CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification<
          Query$GetNotifications$getUser$notifications$$FriendRequestNotification>
      get copyWith =>
          CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification<
    TRes> {
  factory CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification(
    Query$GetNotifications$getUser$notifications$$FriendRequestNotification
        instance,
    TRes Function(
            Query$GetNotifications$getUser$notifications$$FriendRequestNotification)
        then,
  ) = _CopyWithImpl$Query$GetNotifications$getUser$notifications$$FriendRequestNotification;

  factory CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetNotifications$getUser$notifications$$FriendRequestNotification;

  TRes call({
    String? requesterUsername,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetNotifications$getUser$notifications$$FriendRequestNotification<
        TRes>
    implements
        CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification<
            TRes> {
  _CopyWithImpl$Query$GetNotifications$getUser$notifications$$FriendRequestNotification(
    this._instance,
    this._then,
  );

  final Query$GetNotifications$getUser$notifications$$FriendRequestNotification
      _instance;

  final TRes Function(
          Query$GetNotifications$getUser$notifications$$FriendRequestNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requesterUsername = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetNotifications$getUser$notifications$$FriendRequestNotification(
        requesterUsername:
            requesterUsername == _undefined || requesterUsername == null
                ? _instance.requesterUsername
                : (requesterUsername as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetNotifications$getUser$notifications$$FriendRequestNotification<
        TRes>
    implements
        CopyWith$Query$GetNotifications$getUser$notifications$$FriendRequestNotification<
            TRes> {
  _CopyWithStubImpl$Query$GetNotifications$getUser$notifications$$FriendRequestNotification(
      this._res);

  TRes _res;

  call({
    String? requesterUsername,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetNotifications$getUser$notifications$$NewsNotification
    implements
        Fragment$FullNewsNotification,
        Query$GetNotifications$getUser$notifications {
  Query$GetNotifications$getUser$notifications$$NewsNotification({
    required this.newsId,
    this.$__typename = 'NewsNotification',
  });

  factory Query$GetNotifications$getUser$notifications$$NewsNotification.fromJson(
      Map<String, dynamic> json) {
    final l$newsId = json['newsId'];
    final l$$__typename = json['__typename'];
    return Query$GetNotifications$getUser$notifications$$NewsNotification(
      newsId: (l$newsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String newsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newsId = newsId;
    _resultData['newsId'] = l$newsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newsId = newsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetNotifications$getUser$notifications$$NewsNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newsId = newsId;
    final lOther$newsId = other.newsId;
    if (l$newsId != lOther$newsId) {
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

extension UtilityExtension$Query$GetNotifications$getUser$notifications$$NewsNotification
    on Query$GetNotifications$getUser$notifications$$NewsNotification {
  CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification<
          Query$GetNotifications$getUser$notifications$$NewsNotification>
      get copyWith =>
          CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification<
    TRes> {
  factory CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification(
    Query$GetNotifications$getUser$notifications$$NewsNotification instance,
    TRes Function(
            Query$GetNotifications$getUser$notifications$$NewsNotification)
        then,
  ) = _CopyWithImpl$Query$GetNotifications$getUser$notifications$$NewsNotification;

  factory CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetNotifications$getUser$notifications$$NewsNotification;

  TRes call({
    String? newsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetNotifications$getUser$notifications$$NewsNotification<
        TRes>
    implements
        CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification<
            TRes> {
  _CopyWithImpl$Query$GetNotifications$getUser$notifications$$NewsNotification(
    this._instance,
    this._then,
  );

  final Query$GetNotifications$getUser$notifications$$NewsNotification
      _instance;

  final TRes Function(
      Query$GetNotifications$getUser$notifications$$NewsNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newsId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNotifications$getUser$notifications$$NewsNotification(
        newsId: newsId == _undefined || newsId == null
            ? _instance.newsId
            : (newsId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetNotifications$getUser$notifications$$NewsNotification<
        TRes>
    implements
        CopyWith$Query$GetNotifications$getUser$notifications$$NewsNotification<
            TRes> {
  _CopyWithStubImpl$Query$GetNotifications$getUser$notifications$$NewsNotification(
      this._res);

  TRes _res;

  call({
    String? newsId,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'Notification': {
    'FriendRequestNotification',
    'NewsNotification',
  }
};
