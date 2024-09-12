import 'dart:ffi';
import 'swift_hello_world_api_bindings.dart';

void main() {
  final object = SwiftClass.new1(
    SwiftLibrary(
      DynamicLibrary.open('src/libswifthelloworldapi.dylib'),
    ),
  );
  print(object.sayHello());
}
