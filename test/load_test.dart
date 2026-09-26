import 'dart:ffi';

import 'package:test/test.dart';

import 'package:ffi/ffi.dart';
import 'package:sqlite3_bridge/index.dart' as lib;

void main() async {
  test('loads native library', () {
    final versionPtr = lib.sqlite3_libversion();

    expect(versionPtr, isNot(nullptr));

    final versionString = versionPtr.cast<Utf8>().toDartString();

    expect(versionString, isNotEmpty);
  });
}
