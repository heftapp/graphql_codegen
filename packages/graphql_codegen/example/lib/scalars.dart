String dateTimeToJson(DateTime data) {
  return data.toIso8601String();
}

DateTime dateTimeFromJson(dynamic data) {
  return DateTime.parse(data as String);
}
