cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(c_hello_library VERSION 1.0.0 LANGUAGES C)
add_library(c_hello_library SHARED hello_world.c hello_world.def)
add_executable(hello_test hello_world.c)

set_target_properties(c_hello_library PROPERTIES
    PUBLIC_HEADER hello_world.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "hello_world"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Hex_Identity_ID_Goes_Here"
)