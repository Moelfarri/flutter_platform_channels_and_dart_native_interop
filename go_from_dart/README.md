# Setup

1. in the go file; Import C and remember to flag the function as exported "//export HelloWorld"
2. run: go build -o libhello_world.dylib -buildmode=c-shared hello_world.go (depending on platform, you can run dll, dylib or so)
3. create a main.dart file and dynamically load the library
4. dart run lib/main.dart
