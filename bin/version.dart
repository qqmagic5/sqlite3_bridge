import 'package:ffi/ffi.dart';

import 'package:sqlite3_bridge/index.dart' as lib;

void main() {
  print(lib.sqlite3_libversion().cast<Utf8>().toDartString());
}
