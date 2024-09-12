import 'dart:ffi' as ffi;

import 'hello_world.dart';

void main() {
  final helloWorld = HelloWorld(
    ffi.DynamicLibrary.open('c_hello_library/libhello_world.dylib'),
  );

  helloWorld.hello_world();
}
