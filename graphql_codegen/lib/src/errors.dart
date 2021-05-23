/// An error that occurs during parsing of the GraphQL Document.
/// This may happen if type definitions or fields are missing.
class InvalidGraphQLDocumentError extends Error {
  /// The message
  final String message;

  InvalidGraphQLDocumentError(this.message);

  @override
  String toString() => "Invalid GraphQL: $message";
}

/// An error that occurs during printing
class PrinterError extends Error {
  /// The message
  final String message;

  PrinterError(this.message);

  @override
  String toString() => "Printer error: $message";
}
