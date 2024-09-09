An example application to show invocation of native 'C' code dynamically
using Dart FFI. The source used to create this comes from:

- https://dart.dev/interop/c-interop
- https://github.com/dart-lang/samples/tree/main/ffi/hello_world

## Usage

```bash
cd c_hello_library
cmake .
...
make
...
cd ..
dart pub get
dart run hello_world.dart
```

| Source file                     | Description                                                                    |
| ------------------------------- | ------------------------------------------------------------------------------ |
| hello_world.dart                | A Dart file that uses the hello_world() function from a C library.             |
| pubspec.yaml                    | The Dart pubspec file, with an SDK lower bound of 3.4.                         |
| c_hello_library/hello_world.h   | Declares the hello_world() function.                                           |
| c_hello_library/hello_world.c   | A C file that imports hello.h and defines the hello_world() function.          |
| c_hello_library/hello_world.def | A module-definition file which specifies information used when building a DLL. |
| c_hello_library/CMakeLists.txt  | A CMake build file for compiling the C code into a dynamic library.            |
