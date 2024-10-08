// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings to `c_hello_library/hello_world.h`.
class HelloWorld {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  HelloWorld(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  HelloWorld.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void hello_world() {
    return _hello_world();
  }

  late final _hello_worldPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('hello_world');
  late final _hello_world = _hello_worldPtr.asFunction<void Function()>();

  void printText(
    ffi.Pointer<ffi.Char> text,
  ) {
    return _printText(
      text,
    );
  }

  late final _printTextPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>(
          'printText');
  late final _printText =
      _printTextPtr.asFunction<void Function(ffi.Pointer<ffi.Char>)>();
}
