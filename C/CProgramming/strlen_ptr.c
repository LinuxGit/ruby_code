#include <stdio.h>

int strlen_new(char *s) {
    char *p = s;
    while (*p != '\0')
        p++;
    return p - s;
}

int main()
{
    char s[] = "Ruby";
    printf("%d\n", strlen_new(s));
}