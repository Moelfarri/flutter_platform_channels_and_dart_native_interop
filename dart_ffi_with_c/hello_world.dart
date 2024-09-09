//example taken from: https://github.com/dart-lang/samples/blob/main/ffi/hello_world/hello.dart

import 'dart:ffi' as ffi;

//1. Import the path library that you'll use to store the path of dynamic library.
import 'dart:io' show Platform, Directory;
import 'package:path/path.dart' as path;

// 2. Create a typedef with the FFI type signature of the C function.
typedef HelloWorldFunc = ffi.Void Function();

// 3. Create a typedef for the variable to use when calling the C function.
typedef HelloWorld = void Function();

void main() {
  // 4. Create a variable to store the path of the dynamic library.
  var libraryPath =
      path.join(Directory.current.path, 'c_hello_library', 'libhello_world.so');

  if (Platform.isMacOS) {
    libraryPath = path.join(
        Directory.current.path, 'c_hello_library', 'libhello_world.dylib');
  }

  if (Platform.isWindows) {
    libraryPath = path.join(Directory.current.path, 'c_hello_library', 'Debug',
        'libhello_world.dll');
  }

  // Open the dynamic library that contains the C function.
  final dylib = ffi.DynamicLibrary.open(libraryPath);

  //Get a reference to the C function, and put it into a variable. This code uses the typedefs from steps 2 and 3, along with the dynamic library variable from step 4.
  final HelloWorld helloWorld = dylib
      .lookup<ffi.NativeFunction<HelloWorldFunc>>('hello_world')
      .asFunction();

  // Call the C function.
  helloWorld();
}


/*
For large API surfaces, it can be time-consuming to write the 
Dart bindings that integrate with the C code. To have 
Dart create FFI wrappers from C header files, 
use the package:ffigen binding generator.

 */