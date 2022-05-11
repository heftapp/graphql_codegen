import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$I {
  Input$I({this.title});

  @override
  factory Input$I.fromJson(Map<String, dynamic> json) =>
      _$Input$IFromJson(json);

  final String? title;

  Map<String, dynamic> toJson() => _$Input$IToJson(this);
  int get hashCode {
    final l$title = title;
    return Object.hashAll([l$title]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I) || runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$I_ {
  Input$I_({this.value});

  @override
  factory Input$I_.fromJson(Map<String, dynamic> json) =>
      _$Input$I_FromJson(json);

  final double? value;

  Map<String, dynamic> toJson() => _$Input$I_ToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$I_) || runtimeType != other.runtimeType) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$i {
  Input$i({this.enabled});

  @override
  factory Input$i.fromJson(Map<String, dynamic> json) =>
      _$Input$iFromJson(json);

  final bool? enabled;

  Map<String, dynamic> toJson() => _$Input$iToJson(this);
  int get hashCode {
    final l$enabled = enabled;
    return Object.hashAll([l$enabled]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$i) || runtimeType != other.runtimeType) return false;
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) return false;
    return true;
  }
}
