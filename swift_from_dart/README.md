# Swift and Dart interoperability

See the [Ffigen with Swift Example](https://github.com/dart-lang/native/tree/main/pkgs/ffigen/example/swift) page on the Flutter website.

Swift APIs can be made compatible with Objective-C, using the @objc annotation. Then you can use the swiftc tool to build a dylib for the library using -emit-library, and generate an Objective-C wrapper header using -emit-objc-header-path filename.h:

## Usage

```bash
cd src
swiftc -c hello_world.swift                         \
    -module-name swift_module                       \
    -emit-objc-header-path ../src/hello_world.h \
    -emit-library -o libswifthelloworldapi.dylib
cd ..
dart run ffigen --config ffigen.yam
dart run lib/main.dart
```
