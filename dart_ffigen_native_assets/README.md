An example application to show invocation of native 'C' code dynamically
using Dart FFIGen, a tool that generates Dart FFI bindings from C header files.

## Usage

Read the ffigen documentation on prerequisites to be able to use ffigen https://github.com/dart-lang/native/tree/main/pkgs/native_assets_cli/example

```bash
cd src
cmake .
...
make
...
cd ..
dart pub get
dart --enable-experiment=native-assets run ffigen  --config ffigen.yaml
dart --enable-experiment=native-assets  run lib/main.dart
```

Look at dart_ffi_with_c on context related to the c source files
