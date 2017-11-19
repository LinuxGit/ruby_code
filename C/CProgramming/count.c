#include <stdio.h>

int main() {
    int c, ns, nt, nl;

    ns = 0;
    nt = 0;
    nl = 0;
    while ((c = getchar()) != EOF) {
        if (c == ' ')
            ++ns;
        else if (c == '\t')
            ++nt;
        else if (c == '\n')
            ++nl;
    }
    printf("space count: %d, tab count: %d, return count: %d\n", ns, nt, nl);
}
