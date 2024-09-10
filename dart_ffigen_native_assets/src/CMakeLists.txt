cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(src VERSION 1.0.0 LANGUAGES C)
add_library(src SHARED dart_ffigen_native_assets.c dart_ffigen_native_assets.def)
add_executable(dart_ffigen_native_assets_test dart_ffigen_native_assets.c)

set_target_properties(src PROPERTIES
    PUBLIC_HEADER dart_ffigen_native_assets.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "dart_ffigen_native_assets"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Hex_Identity_ID_Goes_Here"
)