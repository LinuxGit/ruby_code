#include <stdio.h>

int bitcount(unsigned x) {
    int b;
    for (b = 0; x != 0; x >>= 1)
        if (x & 01)
            b++;
        return b;
}

int main()
{
    int n = 255;
    printf("%d\n", bitcount(n));
}