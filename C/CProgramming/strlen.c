#include <stdio.h>

int strlen_new(char s[]) {
    int i;
    i = 0;
    while (s[i] != '\0')
        ++i;
    return i;
}

int main() {
    char language[] = "Ruby";
    printf("%d\n", strlen_new(language));
}