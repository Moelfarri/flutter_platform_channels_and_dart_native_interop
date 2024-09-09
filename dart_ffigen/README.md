An example application to show invocation of native 'C' code dynamically
using Dart FFIGen, a tool that generates Dart FFI bindings from C header files.

## Usage

Read the ffigen documentation on prerequisites to be able to use ffigen https://pub.dev/packages/ffigen

```bash
cd c_hello_library
cmake .
...
make
...
cd ..
dart pub get
dart run ffigen --config config.yaml
dart run main.dart
```

Look at dart_ffi_with_c on context related to the c source files
