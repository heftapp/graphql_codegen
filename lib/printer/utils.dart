import 'package:recase/recase.dart';

import '../utils.dart';

String printDocumentName(Name name) =>
    ReCase("Document" + name.key).constantCase;

String printFragmentName(Name name) =>
    ReCase("Fragment" + name.key).constantCase;
