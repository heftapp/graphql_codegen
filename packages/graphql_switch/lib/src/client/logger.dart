import 'package:logger/logger.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    printEmojis: false,
    excludeBox: {
      Level.debug: true,
    },
  ),
);
