#include <stdio.h>

void strcpy_new(char *s, char *t) {
    while ((*s++ = *t++))
        ;
}

int main()
{
    char s[4];
    char t[] = "Ruby";
    strcpy_new(s, t);
    printf("%s\n", s);
}