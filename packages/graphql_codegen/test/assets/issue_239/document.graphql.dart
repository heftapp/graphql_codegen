import 'package:gql/ast.dart';

class Fragment$HotelBooking {
  Fragment$HotelBooking({
    this.name,
    this.$__typename = 'HotelBooking',
  });

  factory Fragment$HotelBooking.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$HotelBooking(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

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
    if (!(other is Fragment$HotelBooking) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$HotelBooking on Fragment$HotelBooking {
  CopyWith$Fragment$HotelBooking<Fragment$HotelBooking> get copyWith =>
      CopyWith$Fragment$HotelBooking(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$HotelBooking<TRes> {
  factory CopyWith$Fragment$HotelBooking(
    Fragment$HotelBooking instance,
    TRes Function(Fragment$HotelBooking) then,
  ) = _CopyWithImpl$Fragment$HotelBooking;

  factory CopyWith$Fragment$HotelBooking.stub(TRes res) =
      _CopyWithStubImpl$Fragment$HotelBooking;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$HotelBooking<TRes>
    implements CopyWith$Fragment$HotelBooking<TRes> {
  _CopyWithImpl$Fragment$HotelBooking(
    this._instance,
    this._then,
  );

  final Fragment$HotelBooking _instance;

  final TRes Function(Fragment$HotelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$HotelBooking(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$HotelBooking<TRes>
    implements CopyWith$Fragment$HotelBooking<TRes> {
  _CopyWithStubImpl$Fragment$HotelBooking(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionHotelBooking = FragmentDefinitionNode(
  name: NameNode(value: 'HotelBooking'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HotelBooking'),
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
const documentNodeFragmentHotelBooking = DocumentNode(definitions: [
  fragmentDefinitionHotelBooking,
]);

class Query$Q {
  Query$Q({
    this.booking,
    this.hotelBooking,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$booking = json['booking'];
    final l$hotelBooking = json['hotelBooking'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      booking: l$booking == null
          ? null
          : Query$Q$booking.fromJson((l$booking as Map<String, dynamic>)),
      hotelBooking: l$hotelBooking == null
          ? null
          : Fragment$HotelBooking.fromJson(
              (l$hotelBooking as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Q$booking? booking;

  final Fragment$HotelBooking? hotelBooking;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$booking = booking;
    _resultData['booking'] = l$booking?.toJson();
    final l$hotelBooking = hotelBooking;
    _resultData['hotelBooking'] = l$hotelBooking?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$booking = booking;
    final l$hotelBooking = hotelBooking;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$booking,
      l$hotelBooking,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$booking = booking;
    final lOther$booking = other.booking;
    if (l$booking != lOther$booking) {
      return false;
    }
    final l$hotelBooking = hotelBooking;
    final lOther$hotelBooking = other.hotelBooking;
    if (l$hotelBooking != lOther$hotelBooking) {
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

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({
    Query$Q$booking? booking,
    Fragment$HotelBooking? hotelBooking,
    String? $__typename,
  });
  CopyWith$Query$Q$booking<TRes> get booking;
  CopyWith$Fragment$HotelBooking<TRes> get hotelBooking;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? booking = _undefined,
    Object? hotelBooking = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        booking: booking == _undefined
            ? _instance.booking
            : (booking as Query$Q$booking?),
        hotelBooking: hotelBooking == _undefined
            ? _instance.hotelBooking
            : (hotelBooking as Fragment$HotelBooking?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Q$booking<TRes> get booking {
    final local$booking = _instance.booking;
    return local$booking == null
        ? CopyWith$Query$Q$booking.stub(_then(_instance))
        : CopyWith$Query$Q$booking(local$booking, (e) => call(booking: e));
  }

  CopyWith$Fragment$HotelBooking<TRes> get hotelBooking {
    final local$hotelBooking = _instance.hotelBooking;
    return local$hotelBooking == null
        ? CopyWith$Fragment$HotelBooking.stub(_then(_instance))
        : CopyWith$Fragment$HotelBooking(
            local$hotelBooking, (e) => call(hotelBooking: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    Query$Q$booking? booking,
    Fragment$HotelBooking? hotelBooking,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Q$booking<TRes> get booking =>
      CopyWith$Query$Q$booking.stub(_res);
  CopyWith$Fragment$HotelBooking<TRes> get hotelBooking =>
      CopyWith$Fragment$HotelBooking.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'booking'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'HotelBooking'),
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
        name: NameNode(value: 'hotelBooking'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'HotelBooking'),
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
  fragmentDefinitionHotelBooking,
]);

class Query$Q$booking {
  Query$Q$booking({required this.$__typename});

  factory Query$Q$booking.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "HotelBooking":
        return Query$Q$booking$$HotelBooking.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Q$booking($__typename: (l$$__typename as String));
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
    if (!(other is Query$Q$booking) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Q$booking on Query$Q$booking {
  CopyWith$Query$Q$booking<Query$Q$booking> get copyWith =>
      CopyWith$Query$Q$booking(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Q$booking$$HotelBooking) hotelBooking,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "HotelBooking":
        return hotelBooking(this as Query$Q$booking$$HotelBooking);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Q$booking$$HotelBooking)? hotelBooking,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "HotelBooking":
        if (hotelBooking != null) {
          return hotelBooking(this as Query$Q$booking$$HotelBooking);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Q$booking<TRes> {
  factory CopyWith$Query$Q$booking(
    Query$Q$booking instance,
    TRes Function(Query$Q$booking) then,
  ) = _CopyWithImpl$Query$Q$booking;

  factory CopyWith$Query$Q$booking.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$booking;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Q$booking<TRes>
    implements CopyWith$Query$Q$booking<TRes> {
  _CopyWithImpl$Query$Q$booking(
    this._instance,
    this._then,
  );

  final Query$Q$booking _instance;

  final TRes Function(Query$Q$booking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Query$Q$booking(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Q$booking<TRes>
    implements CopyWith$Query$Q$booking<TRes> {
  _CopyWithStubImpl$Query$Q$booking(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Q$booking$$HotelBooking
    implements Fragment$HotelBooking, Query$Q$booking {
  Query$Q$booking$$HotelBooking({
    this.name,
    this.$__typename = 'HotelBooking',
  });

  factory Query$Q$booking$$HotelBooking.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Q$booking$$HotelBooking(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

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
    if (!(other is Query$Q$booking$$HotelBooking) ||
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

extension UtilityExtension$Query$Q$booking$$HotelBooking
    on Query$Q$booking$$HotelBooking {
  CopyWith$Query$Q$booking$$HotelBooking<Query$Q$booking$$HotelBooking>
      get copyWith => CopyWith$Query$Q$booking$$HotelBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Q$booking$$HotelBooking<TRes> {
  factory CopyWith$Query$Q$booking$$HotelBooking(
    Query$Q$booking$$HotelBooking instance,
    TRes Function(Query$Q$booking$$HotelBooking) then,
  ) = _CopyWithImpl$Query$Q$booking$$HotelBooking;

  factory CopyWith$Query$Q$booking$$HotelBooking.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$booking$$HotelBooking;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$booking$$HotelBooking<TRes>
    implements CopyWith$Query$Q$booking$$HotelBooking<TRes> {
  _CopyWithImpl$Query$Q$booking$$HotelBooking(
    this._instance,
    this._then,
  );

  final Query$Q$booking$$HotelBooking _instance;

  final TRes Function(Query$Q$booking$$HotelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$booking$$HotelBooking(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$booking$$HotelBooking<TRes>
    implements CopyWith$Query$Q$booking$$HotelBooking<TRes> {
  _CopyWithStubImpl$Query$Q$booking$$HotelBooking(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'Booking': {'HotelBooking'}
};
