import 'package:gql/ast.dart';

class Fragment$EventFragment {
  Fragment$EventFragment({
    this.subscription,
    required this.$__typename,
  });

  factory Fragment$EventFragment.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "EventPublic":
        return Fragment$EventFragment$$EventPublic.fromJson(json);

      default:
        final l$subscription = json['subscription'];
        final l$$__typename = json['__typename'];
        return Fragment$EventFragment(
          subscription: l$subscription == null
              ? null
              : Fragment$EventFragment$subscription.fromJson(
                  (l$subscription as Map<String, dynamic>)),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final Fragment$EventFragment$subscription? subscription;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subscription = subscription;
    _resultData['subscription'] = l$subscription?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subscription = subscription;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subscription,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$EventFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subscription = subscription;
    final lOther$subscription = other.subscription;
    if (l$subscription != lOther$subscription) {
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

extension UtilityExtension$Fragment$EventFragment on Fragment$EventFragment {
  CopyWith$Fragment$EventFragment<Fragment$EventFragment> get copyWith =>
      CopyWith$Fragment$EventFragment(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Fragment$EventFragment$$EventPublic) eventPublic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EventPublic":
        return eventPublic(this as Fragment$EventFragment$$EventPublic);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$EventFragment$$EventPublic)? eventPublic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EventPublic":
        if (eventPublic != null) {
          return eventPublic(this as Fragment$EventFragment$$EventPublic);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$EventFragment<TRes> {
  factory CopyWith$Fragment$EventFragment(
    Fragment$EventFragment instance,
    TRes Function(Fragment$EventFragment) then,
  ) = _CopyWithImpl$Fragment$EventFragment;

  factory CopyWith$Fragment$EventFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EventFragment;

  TRes call({
    Fragment$EventFragment$subscription? subscription,
    String? $__typename,
  });
  CopyWith$Fragment$EventFragment$subscription<TRes> get subscription;
}

class _CopyWithImpl$Fragment$EventFragment<TRes>
    implements CopyWith$Fragment$EventFragment<TRes> {
  _CopyWithImpl$Fragment$EventFragment(
    this._instance,
    this._then,
  );

  final Fragment$EventFragment _instance;

  final TRes Function(Fragment$EventFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? subscription = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EventFragment(
        subscription: subscription == _undefined
            ? _instance.subscription
            : (subscription as Fragment$EventFragment$subscription?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$EventFragment$subscription<TRes> get subscription {
    final local$subscription = _instance.subscription;
    return local$subscription == null
        ? CopyWith$Fragment$EventFragment$subscription.stub(_then(_instance))
        : CopyWith$Fragment$EventFragment$subscription(
            local$subscription, (e) => call(subscription: e));
  }
}

class _CopyWithStubImpl$Fragment$EventFragment<TRes>
    implements CopyWith$Fragment$EventFragment<TRes> {
  _CopyWithStubImpl$Fragment$EventFragment(this._res);

  TRes _res;

  call({
    Fragment$EventFragment$subscription? subscription,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$EventFragment$subscription<TRes> get subscription =>
      CopyWith$Fragment$EventFragment$subscription.stub(_res);
}

const fragmentDefinitionEventFragment = FragmentDefinitionNode(
  name: NameNode(value: 'EventFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Event'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'subscription'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'notifyFor'),
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
        name: NameNode(value: 'EventPublic'),
        isNonNull: false,
      )),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'owner'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UserPublicFragment'),
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
);
const documentNodeFragmentEventFragment = DocumentNode(definitions: [
  fragmentDefinitionEventFragment,
  fragmentDefinitionUserPublicFragment,
]);

class Fragment$EventFragment$subscription {
  Fragment$EventFragment$subscription({
    required this.notifyFor,
    this.$__typename = 'EventSubscription',
  });

  factory Fragment$EventFragment$subscription.fromJson(
      Map<String, dynamic> json) {
    final l$notifyFor = json['notifyFor'];
    final l$$__typename = json['__typename'];
    return Fragment$EventFragment$subscription(
      notifyFor: (l$notifyFor as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String notifyFor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notifyFor = notifyFor;
    _resultData['notifyFor'] = l$notifyFor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notifyFor = notifyFor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notifyFor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$EventFragment$subscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notifyFor = notifyFor;
    final lOther$notifyFor = other.notifyFor;
    if (l$notifyFor != lOther$notifyFor) {
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

extension UtilityExtension$Fragment$EventFragment$subscription
    on Fragment$EventFragment$subscription {
  CopyWith$Fragment$EventFragment$subscription<
          Fragment$EventFragment$subscription>
      get copyWith => CopyWith$Fragment$EventFragment$subscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$EventFragment$subscription<TRes> {
  factory CopyWith$Fragment$EventFragment$subscription(
    Fragment$EventFragment$subscription instance,
    TRes Function(Fragment$EventFragment$subscription) then,
  ) = _CopyWithImpl$Fragment$EventFragment$subscription;

  factory CopyWith$Fragment$EventFragment$subscription.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EventFragment$subscription;

  TRes call({
    String? notifyFor,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$EventFragment$subscription<TRes>
    implements CopyWith$Fragment$EventFragment$subscription<TRes> {
  _CopyWithImpl$Fragment$EventFragment$subscription(
    this._instance,
    this._then,
  );

  final Fragment$EventFragment$subscription _instance;

  final TRes Function(Fragment$EventFragment$subscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notifyFor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EventFragment$subscription(
        notifyFor: notifyFor == _undefined || notifyFor == null
            ? _instance.notifyFor
            : (notifyFor as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$EventFragment$subscription<TRes>
    implements CopyWith$Fragment$EventFragment$subscription<TRes> {
  _CopyWithStubImpl$Fragment$EventFragment$subscription(this._res);

  TRes _res;

  call({
    String? notifyFor,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$EventFragment$$EventPublic implements Fragment$EventFragment {
  Fragment$EventFragment$$EventPublic({
    required this.owner,
    this.$__typename = 'EventPublic',
    this.subscription,
  });

  factory Fragment$EventFragment$$EventPublic.fromJson(
      Map<String, dynamic> json) {
    final l$owner = json['owner'];
    final l$$__typename = json['__typename'];
    final l$subscription = json['subscription'];
    return Fragment$EventFragment$$EventPublic(
      owner: Fragment$UserPublicFragment.fromJson(
          (l$owner as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      subscription: l$subscription == null
          ? null
          : Fragment$EventFragment$$EventPublic$subscription.fromJson(
              (l$subscription as Map<String, dynamic>)),
    );
  }

  final Fragment$UserPublicFragment owner;

  final String $__typename;

  final Fragment$EventFragment$$EventPublic$subscription? subscription;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$subscription = subscription;
    _resultData['subscription'] = l$subscription?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$$__typename = $__typename;
    final l$subscription = subscription;
    return Object.hashAll([
      l$owner,
      l$$__typename,
      l$subscription,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$EventFragment$$EventPublic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$subscription = subscription;
    final lOther$subscription = other.subscription;
    if (l$subscription != lOther$subscription) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$EventFragment$$EventPublic
    on Fragment$EventFragment$$EventPublic {
  CopyWith$Fragment$EventFragment$$EventPublic<
          Fragment$EventFragment$$EventPublic>
      get copyWith => CopyWith$Fragment$EventFragment$$EventPublic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$EventFragment$$EventPublic<TRes> {
  factory CopyWith$Fragment$EventFragment$$EventPublic(
    Fragment$EventFragment$$EventPublic instance,
    TRes Function(Fragment$EventFragment$$EventPublic) then,
  ) = _CopyWithImpl$Fragment$EventFragment$$EventPublic;

  factory CopyWith$Fragment$EventFragment$$EventPublic.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EventFragment$$EventPublic;

  TRes call({
    Fragment$UserPublicFragment? owner,
    String? $__typename,
    Fragment$EventFragment$$EventPublic$subscription? subscription,
  });
  CopyWith$Fragment$UserPublicFragment<TRes> get owner;
  CopyWith$Fragment$EventFragment$$EventPublic$subscription<TRes>
      get subscription;
}

class _CopyWithImpl$Fragment$EventFragment$$EventPublic<TRes>
    implements CopyWith$Fragment$EventFragment$$EventPublic<TRes> {
  _CopyWithImpl$Fragment$EventFragment$$EventPublic(
    this._instance,
    this._then,
  );

  final Fragment$EventFragment$$EventPublic _instance;

  final TRes Function(Fragment$EventFragment$$EventPublic) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? $__typename = _undefined,
    Object? subscription = _undefined,
  }) =>
      _then(Fragment$EventFragment$$EventPublic(
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Fragment$UserPublicFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        subscription: subscription == _undefined
            ? _instance.subscription
            : (subscription
                as Fragment$EventFragment$$EventPublic$subscription?),
      ));
  CopyWith$Fragment$UserPublicFragment<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Fragment$UserPublicFragment(
        local$owner, (e) => call(owner: e));
  }

  CopyWith$Fragment$EventFragment$$EventPublic$subscription<TRes>
      get subscription {
    final local$subscription = _instance.subscription;
    return local$subscription == null
        ? CopyWith$Fragment$EventFragment$$EventPublic$subscription.stub(
            _then(_instance))
        : CopyWith$Fragment$EventFragment$$EventPublic$subscription(
            local$subscription, (e) => call(subscription: e));
  }
}

class _CopyWithStubImpl$Fragment$EventFragment$$EventPublic<TRes>
    implements CopyWith$Fragment$EventFragment$$EventPublic<TRes> {
  _CopyWithStubImpl$Fragment$EventFragment$$EventPublic(this._res);

  TRes _res;

  call({
    Fragment$UserPublicFragment? owner,
    String? $__typename,
    Fragment$EventFragment$$EventPublic$subscription? subscription,
  }) =>
      _res;
  CopyWith$Fragment$UserPublicFragment<TRes> get owner =>
      CopyWith$Fragment$UserPublicFragment.stub(_res);
  CopyWith$Fragment$EventFragment$$EventPublic$subscription<TRes>
      get subscription =>
          CopyWith$Fragment$EventFragment$$EventPublic$subscription.stub(_res);
}

class Fragment$EventFragment$$EventPublic$subscription
    implements Fragment$EventFragment$subscription {
  Fragment$EventFragment$$EventPublic$subscription({
    required this.notifyFor,
    this.$__typename = 'EventSubscription',
  });

  factory Fragment$EventFragment$$EventPublic$subscription.fromJson(
      Map<String, dynamic> json) {
    final l$notifyFor = json['notifyFor'];
    final l$$__typename = json['__typename'];
    return Fragment$EventFragment$$EventPublic$subscription(
      notifyFor: (l$notifyFor as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String notifyFor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notifyFor = notifyFor;
    _resultData['notifyFor'] = l$notifyFor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notifyFor = notifyFor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notifyFor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$EventFragment$$EventPublic$subscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notifyFor = notifyFor;
    final lOther$notifyFor = other.notifyFor;
    if (l$notifyFor != lOther$notifyFor) {
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

extension UtilityExtension$Fragment$EventFragment$$EventPublic$subscription
    on Fragment$EventFragment$$EventPublic$subscription {
  CopyWith$Fragment$EventFragment$$EventPublic$subscription<
          Fragment$EventFragment$$EventPublic$subscription>
      get copyWith => CopyWith$Fragment$EventFragment$$EventPublic$subscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$EventFragment$$EventPublic$subscription<TRes> {
  factory CopyWith$Fragment$EventFragment$$EventPublic$subscription(
    Fragment$EventFragment$$EventPublic$subscription instance,
    TRes Function(Fragment$EventFragment$$EventPublic$subscription) then,
  ) = _CopyWithImpl$Fragment$EventFragment$$EventPublic$subscription;

  factory CopyWith$Fragment$EventFragment$$EventPublic$subscription.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$EventFragment$$EventPublic$subscription;

  TRes call({
    String? notifyFor,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$EventFragment$$EventPublic$subscription<TRes>
    implements CopyWith$Fragment$EventFragment$$EventPublic$subscription<TRes> {
  _CopyWithImpl$Fragment$EventFragment$$EventPublic$subscription(
    this._instance,
    this._then,
  );

  final Fragment$EventFragment$$EventPublic$subscription _instance;

  final TRes Function(Fragment$EventFragment$$EventPublic$subscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notifyFor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EventFragment$$EventPublic$subscription(
        notifyFor: notifyFor == _undefined || notifyFor == null
            ? _instance.notifyFor
            : (notifyFor as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$EventFragment$$EventPublic$subscription<TRes>
    implements CopyWith$Fragment$EventFragment$$EventPublic$subscription<TRes> {
  _CopyWithStubImpl$Fragment$EventFragment$$EventPublic$subscription(this._res);

  TRes _res;

  call({
    String? notifyFor,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserPublicFragment {
  Fragment$UserPublicFragment({
    required this.username,
    this.$__typename = 'UserPublic',
  });

  factory Fragment$UserPublicFragment.fromJson(Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Fragment$UserPublicFragment(
      username: (l$username as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserPublicFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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

extension UtilityExtension$Fragment$UserPublicFragment
    on Fragment$UserPublicFragment {
  CopyWith$Fragment$UserPublicFragment<Fragment$UserPublicFragment>
      get copyWith => CopyWith$Fragment$UserPublicFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserPublicFragment<TRes> {
  factory CopyWith$Fragment$UserPublicFragment(
    Fragment$UserPublicFragment instance,
    TRes Function(Fragment$UserPublicFragment) then,
  ) = _CopyWithImpl$Fragment$UserPublicFragment;

  factory CopyWith$Fragment$UserPublicFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserPublicFragment;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserPublicFragment<TRes>
    implements CopyWith$Fragment$UserPublicFragment<TRes> {
  _CopyWithImpl$Fragment$UserPublicFragment(
    this._instance,
    this._then,
  );

  final Fragment$UserPublicFragment _instance;

  final TRes Function(Fragment$UserPublicFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserPublicFragment(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserPublicFragment<TRes>
    implements CopyWith$Fragment$UserPublicFragment<TRes> {
  _CopyWithStubImpl$Fragment$UserPublicFragment(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserPublicFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UserPublicFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserPublic'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUserPublicFragment = DocumentNode(definitions: [
  fragmentDefinitionUserPublicFragment,
]);

class Mutation$Bla {
  Mutation$Bla({
    this.bla,
    this.$__typename = 'Mutations',
  });

  factory Mutation$Bla.fromJson(Map<String, dynamic> json) {
    final l$bla = json['bla'];
    final l$$__typename = json['__typename'];
    return Mutation$Bla(
      bla: l$bla == null
          ? null
          : Mutation$Bla$bla.fromJson((l$bla as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Bla$bla? bla;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bla = bla;
    _resultData['bla'] = l$bla?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bla = bla;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bla,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Bla) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bla = bla;
    final lOther$bla = other.bla;
    if (l$bla != lOther$bla) {
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

extension UtilityExtension$Mutation$Bla on Mutation$Bla {
  CopyWith$Mutation$Bla<Mutation$Bla> get copyWith => CopyWith$Mutation$Bla(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Bla<TRes> {
  factory CopyWith$Mutation$Bla(
    Mutation$Bla instance,
    TRes Function(Mutation$Bla) then,
  ) = _CopyWithImpl$Mutation$Bla;

  factory CopyWith$Mutation$Bla.stub(TRes res) = _CopyWithStubImpl$Mutation$Bla;

  TRes call({
    Mutation$Bla$bla? bla,
    String? $__typename,
  });
  CopyWith$Mutation$Bla$bla<TRes> get bla;
}

class _CopyWithImpl$Mutation$Bla<TRes> implements CopyWith$Mutation$Bla<TRes> {
  _CopyWithImpl$Mutation$Bla(
    this._instance,
    this._then,
  );

  final Mutation$Bla _instance;

  final TRes Function(Mutation$Bla) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bla = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Bla(
        bla: bla == _undefined ? _instance.bla : (bla as Mutation$Bla$bla?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$Bla$bla<TRes> get bla {
    final local$bla = _instance.bla;
    return local$bla == null
        ? CopyWith$Mutation$Bla$bla.stub(_then(_instance))
        : CopyWith$Mutation$Bla$bla(local$bla, (e) => call(bla: e));
  }
}

class _CopyWithStubImpl$Mutation$Bla<TRes>
    implements CopyWith$Mutation$Bla<TRes> {
  _CopyWithStubImpl$Mutation$Bla(this._res);

  TRes _res;

  call({
    Mutation$Bla$bla? bla,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$Bla$bla<TRes> get bla =>
      CopyWith$Mutation$Bla$bla.stub(_res);
}

const documentNodeMutationBla = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Bla'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bla'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'EventFragment'),
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
  fragmentDefinitionEventFragment,
  fragmentDefinitionUserPublicFragment,
]);

class Mutation$Bla$bla {
  Mutation$Bla$bla({required this.$__typename});

  factory Mutation$Bla$bla.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "EventPublic":
        return Mutation$Bla$bla$$EventPublic.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$Bla$bla($__typename: (l$$__typename as String));
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
    if (!(other is Mutation$Bla$bla) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Bla$bla on Mutation$Bla$bla {
  CopyWith$Mutation$Bla$bla<Mutation$Bla$bla> get copyWith =>
      CopyWith$Mutation$Bla$bla(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Mutation$Bla$bla$$EventPublic) eventPublic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EventPublic":
        return eventPublic(this as Mutation$Bla$bla$$EventPublic);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$Bla$bla$$EventPublic)? eventPublic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EventPublic":
        if (eventPublic != null) {
          return eventPublic(this as Mutation$Bla$bla$$EventPublic);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$Bla$bla<TRes> {
  factory CopyWith$Mutation$Bla$bla(
    Mutation$Bla$bla instance,
    TRes Function(Mutation$Bla$bla) then,
  ) = _CopyWithImpl$Mutation$Bla$bla;

  factory CopyWith$Mutation$Bla$bla.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Bla$bla;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Bla$bla<TRes>
    implements CopyWith$Mutation$Bla$bla<TRes> {
  _CopyWithImpl$Mutation$Bla$bla(
    this._instance,
    this._then,
  );

  final Mutation$Bla$bla _instance;

  final TRes Function(Mutation$Bla$bla) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Mutation$Bla$bla(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Bla$bla<TRes>
    implements CopyWith$Mutation$Bla$bla<TRes> {
  _CopyWithStubImpl$Mutation$Bla$bla(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Bla$bla$$EventPublic
    implements Fragment$EventFragment$$EventPublic, Mutation$Bla$bla {
  Mutation$Bla$bla$$EventPublic({
    this.subscription,
    required this.owner,
    this.$__typename = 'EventPublic',
  });

  factory Mutation$Bla$bla$$EventPublic.fromJson(Map<String, dynamic> json) {
    final l$subscription = json['subscription'];
    final l$owner = json['owner'];
    final l$$__typename = json['__typename'];
    return Mutation$Bla$bla$$EventPublic(
      subscription: l$subscription == null
          ? null
          : Mutation$Bla$bla$$EventPublic$subscription.fromJson(
              (l$subscription as Map<String, dynamic>)),
      owner: Fragment$UserPublicFragment.fromJson(
          (l$owner as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Bla$bla$$EventPublic$subscription? subscription;

  final Fragment$UserPublicFragment owner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subscription = subscription;
    _resultData['subscription'] = l$subscription?.toJson();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subscription = subscription;
    final l$owner = owner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$subscription,
      l$owner,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Bla$bla$$EventPublic) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$subscription = subscription;
    final lOther$subscription = other.subscription;
    if (l$subscription != lOther$subscription) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
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

extension UtilityExtension$Mutation$Bla$bla$$EventPublic
    on Mutation$Bla$bla$$EventPublic {
  CopyWith$Mutation$Bla$bla$$EventPublic<Mutation$Bla$bla$$EventPublic>
      get copyWith => CopyWith$Mutation$Bla$bla$$EventPublic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Bla$bla$$EventPublic<TRes> {
  factory CopyWith$Mutation$Bla$bla$$EventPublic(
    Mutation$Bla$bla$$EventPublic instance,
    TRes Function(Mutation$Bla$bla$$EventPublic) then,
  ) = _CopyWithImpl$Mutation$Bla$bla$$EventPublic;

  factory CopyWith$Mutation$Bla$bla$$EventPublic.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Bla$bla$$EventPublic;

  TRes call({
    Mutation$Bla$bla$$EventPublic$subscription? subscription,
    Fragment$UserPublicFragment? owner,
    String? $__typename,
  });
  CopyWith$Mutation$Bla$bla$$EventPublic$subscription<TRes> get subscription;
  CopyWith$Fragment$UserPublicFragment<TRes> get owner;
}

class _CopyWithImpl$Mutation$Bla$bla$$EventPublic<TRes>
    implements CopyWith$Mutation$Bla$bla$$EventPublic<TRes> {
  _CopyWithImpl$Mutation$Bla$bla$$EventPublic(
    this._instance,
    this._then,
  );

  final Mutation$Bla$bla$$EventPublic _instance;

  final TRes Function(Mutation$Bla$bla$$EventPublic) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? subscription = _undefined,
    Object? owner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Bla$bla$$EventPublic(
        subscription: subscription == _undefined
            ? _instance.subscription
            : (subscription as Mutation$Bla$bla$$EventPublic$subscription?),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Fragment$UserPublicFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$Bla$bla$$EventPublic$subscription<TRes> get subscription {
    final local$subscription = _instance.subscription;
    return local$subscription == null
        ? CopyWith$Mutation$Bla$bla$$EventPublic$subscription.stub(
            _then(_instance))
        : CopyWith$Mutation$Bla$bla$$EventPublic$subscription(
            local$subscription, (e) => call(subscription: e));
  }

  CopyWith$Fragment$UserPublicFragment<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Fragment$UserPublicFragment(
        local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Mutation$Bla$bla$$EventPublic<TRes>
    implements CopyWith$Mutation$Bla$bla$$EventPublic<TRes> {
  _CopyWithStubImpl$Mutation$Bla$bla$$EventPublic(this._res);

  TRes _res;

  call({
    Mutation$Bla$bla$$EventPublic$subscription? subscription,
    Fragment$UserPublicFragment? owner,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$Bla$bla$$EventPublic$subscription<TRes> get subscription =>
      CopyWith$Mutation$Bla$bla$$EventPublic$subscription.stub(_res);
  CopyWith$Fragment$UserPublicFragment<TRes> get owner =>
      CopyWith$Fragment$UserPublicFragment.stub(_res);
}

class Mutation$Bla$bla$$EventPublic$subscription
    implements Fragment$EventFragment$$EventPublic$subscription {
  Mutation$Bla$bla$$EventPublic$subscription({
    required this.notifyFor,
    this.$__typename = 'EventSubscription',
  });

  factory Mutation$Bla$bla$$EventPublic$subscription.fromJson(
      Map<String, dynamic> json) {
    final l$notifyFor = json['notifyFor'];
    final l$$__typename = json['__typename'];
    return Mutation$Bla$bla$$EventPublic$subscription(
      notifyFor: (l$notifyFor as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String notifyFor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notifyFor = notifyFor;
    _resultData['notifyFor'] = l$notifyFor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notifyFor = notifyFor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notifyFor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Bla$bla$$EventPublic$subscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notifyFor = notifyFor;
    final lOther$notifyFor = other.notifyFor;
    if (l$notifyFor != lOther$notifyFor) {
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

extension UtilityExtension$Mutation$Bla$bla$$EventPublic$subscription
    on Mutation$Bla$bla$$EventPublic$subscription {
  CopyWith$Mutation$Bla$bla$$EventPublic$subscription<
          Mutation$Bla$bla$$EventPublic$subscription>
      get copyWith => CopyWith$Mutation$Bla$bla$$EventPublic$subscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Bla$bla$$EventPublic$subscription<TRes> {
  factory CopyWith$Mutation$Bla$bla$$EventPublic$subscription(
    Mutation$Bla$bla$$EventPublic$subscription instance,
    TRes Function(Mutation$Bla$bla$$EventPublic$subscription) then,
  ) = _CopyWithImpl$Mutation$Bla$bla$$EventPublic$subscription;

  factory CopyWith$Mutation$Bla$bla$$EventPublic$subscription.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Bla$bla$$EventPublic$subscription;

  TRes call({
    String? notifyFor,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Bla$bla$$EventPublic$subscription<TRes>
    implements CopyWith$Mutation$Bla$bla$$EventPublic$subscription<TRes> {
  _CopyWithImpl$Mutation$Bla$bla$$EventPublic$subscription(
    this._instance,
    this._then,
  );

  final Mutation$Bla$bla$$EventPublic$subscription _instance;

  final TRes Function(Mutation$Bla$bla$$EventPublic$subscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notifyFor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Bla$bla$$EventPublic$subscription(
        notifyFor: notifyFor == _undefined || notifyFor == null
            ? _instance.notifyFor
            : (notifyFor as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Bla$bla$$EventPublic$subscription<TRes>
    implements CopyWith$Mutation$Bla$bla$$EventPublic$subscription<TRes> {
  _CopyWithStubImpl$Mutation$Bla$bla$$EventPublic$subscription(this._res);

  TRes _res;

  call({
    String? notifyFor,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'EventUnion': {'EventPublic'},
  'Event': {'EventPublic'},
};
