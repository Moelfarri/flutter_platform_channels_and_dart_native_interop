An example application to show invocation of native 'C' code dynamically
using Dart FFI. The source used to create this comes from:

- https://dart.dev/interop/c-interop
- https://github.com/dart-lang/samples/tree/main/ffi/hello_world

## Usage

Run application in JIT with `dart --enable-experiment=native-assets run`.

Run tests with `dart --enable-experiment=native-assets test`.

run application in AOT with `dart --enable-experiment=native-assets build bin/native_add_app`. (Run with `./bin/native_add_app/native_add_app.exe`.)

| Source file                     | Description                                                                    |
| ------------------------------- | ------------------------------------------------------------------------------ |
| hello_world.dart                | A Dart file that uses the hello_world() function from a C library.             |
| pubspec.yaml                    | The Dart pubspec file, with an SDK lower bound of 3.4.                         |
| c_hello_library/hello_world.h   | Declares the hello_world() function.                                           |
| c_hello_library/hello_world.c   | A C file that imports hello.h and defines the hello_world() function.          |
| c_hello_library/hello_world.def | A module-definition file which specifies information used when building a DLL. |
| c_hello_library/CMakeLists.txt  | A CMake build file for compiling the C code into a dynamic library.            |
