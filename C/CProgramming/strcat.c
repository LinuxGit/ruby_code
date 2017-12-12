#include <stdio.h>

void strcat_new(char *s, char *t) {
    while (*s)
        s++;
    while ((*s++ = *t++))
        ;
}

int main()
{
    char s[] = "Linux";
    char t[] = "Git";
    strcat_new(s, t);
    printf("%s\n", s);
}