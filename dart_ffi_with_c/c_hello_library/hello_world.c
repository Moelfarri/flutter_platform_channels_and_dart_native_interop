// example taken from: https://github.com/dart-lang/samples/tree/main/ffi/hello_world

#include <stdio.h>
#include "hello_world.h"

int main()
{
    hello_world();
    return 0;
}

void hello_world()
{
    printf("Hello World\n");
}

void printText(char *text)
{
    printf("%s\n", text);
}