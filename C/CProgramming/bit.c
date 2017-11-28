#include <stdio.h>

int main() {
    int a = 8;
    int b = 10;
    printf("%d\n", a & b);
    printf("%d\n", a | b);
    printf("%d\n", a ^ b);
    printf("%d\n", ~ b);
    printf("%d\n", b << 1 );
    printf("%d\n", b >> 2 );
}