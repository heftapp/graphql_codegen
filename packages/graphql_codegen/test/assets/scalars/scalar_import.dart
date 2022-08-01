import 'fobbob.dart';

export 'fobbob.dart' show Fobbob;

Fobbob? fobbobFromJson(dynamic) => Fobbob();

dynamic fobbobToJson(Fobbob bob) => 1337;
