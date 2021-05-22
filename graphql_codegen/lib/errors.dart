class InvalidGraphQLDocumentError extends Error {
  final String message;

  InvalidGraphQLDocumentError(this.message);

  String toString() => "Invalid GraphQL: $message";
}

class PrinterError extends Error {
  final String message;

  PrinterError(this.message);

  String toString() => "Printer error: $message";
}
