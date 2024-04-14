DateTime? customDateTimeFromJson(dynamic dynamic) =>
    dynamic is String ? DateTime.parse(dynamic) : null;

dynamic customDateTimeToJson(DateTime date) => date.toIso8601String();
