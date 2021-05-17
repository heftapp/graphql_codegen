import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

abstract class FragmentFragmentA {
  String? get s;
}

abstract class FragmentFragmentB {
  int? get i;
}

@JsonSerializable()
class QueryFetchImplementations extends JsonSerializable {
  QueryFetchImplementations(this.interface);

  @override
  factory QueryFetchImplementations.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchImplementationsFromJson(json);

  final QueryFetchImplementations$finterface? interface;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchImplementationsToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$finterface extends JsonSerializable {
  QueryFetchImplementations$finterface(this.typename, this.b, this.self);

  @override
  factory QueryFetchImplementations$finterface.fromJson(
      Map<String, dynamic> json) {
    switch (json["typename"] as String) {
      case "ImplementationA":
        return QueryFetchImplementations$finterface$tImplementationA.fromJson(
            json);
      case "ImplementationB":
        return QueryFetchImplementations$finterface$tImplementationB.fromJson(
            json);
      default:
        return _$QueryFetchImplementations$finterfaceFromJson(json);
    }
  }

  final String typename;

  final bool? b;

  final QueryFetchImplementations$finterface$fself self;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$finterfaceToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$finterface$fself extends JsonSerializable {
  QueryFetchImplementations$finterface$fself(this.tpe);

  @override
  factory QueryFetchImplementations$finterface$fself.fromJson(
      Map<String, dynamic> json) {
    switch (json["tpe"] as String) {
      case "ImplementationA":
        return QueryFetchImplementations$finterface$fself$tImplementationA
            .fromJson(json);
      case "ImplementationB":
        return QueryFetchImplementations$finterface$fself$tImplementationB
            .fromJson(json);
      default:
        return _$QueryFetchImplementations$finterface$fselfFromJson(json);
    }
  }

  final String tpe;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$finterface$fselfToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$finterface$fself$tImplementationA
    extends QueryFetchImplementations$finterface$fself
    implements FragmentFragmentA {
  QueryFetchImplementations$finterface$fself$tImplementationA(
      this.s, String tpe)
      : super(tpe);

  @override
  factory QueryFetchImplementations$finterface$fself$tImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$finterface$fself$tImplementationAFromJson(
          json);

  final String? s;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$finterface$fself$tImplementationAToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$finterface$fself$tImplementationB
    extends QueryFetchImplementations$finterface$fself
    implements FragmentFragmentB {
  QueryFetchImplementations$finterface$fself$tImplementationB(
      this.i, String tpe)
      : super(tpe);

  @override
  factory QueryFetchImplementations$finterface$fself$tImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$finterface$fself$tImplementationBFromJson(
          json);

  final int? i;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$finterface$fself$tImplementationBToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$finterface$tImplementationA
    extends QueryFetchImplementations$finterface implements FragmentFragmentA {
  QueryFetchImplementations$finterface$tImplementationA(this.s, String typename,
      bool? b, QueryFetchImplementations$finterface$fself self)
      : super(typename, b, self);

  @override
  factory QueryFetchImplementations$finterface$tImplementationA.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$finterface$tImplementationAFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$finterface$tImplementationAToJson(this);
}

@JsonSerializable()
class QueryFetchImplementations$finterface$tImplementationB
    extends QueryFetchImplementations$finterface implements FragmentFragmentB {
  QueryFetchImplementations$finterface$tImplementationB(this.i, String typename,
      bool? b, QueryFetchImplementations$finterface$fself self)
      : super(typename, b, self);

  @override
  factory QueryFetchImplementations$finterface$tImplementationB.fromJson(
          Map<String, dynamic> json) =>
      _$QueryFetchImplementations$finterface$tImplementationBFromJson(json);

  final int? i;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryFetchImplementations$finterface$tImplementationBToJson(this);
}
