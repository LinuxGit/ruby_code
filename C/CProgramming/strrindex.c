#include <stdio.h>
#include <string.h>

int strindex(char s[], char t[]) {
    int i, j, k;

    for (i = strlen(s) - strlen(t); i >= 0; i--) {
        for (j = i, k = 0; t[k] != '\0' && s[j] == t[k]; j++, k++)
            ;
        if (k > 0 && t[k] == '\0')
            return i;
    }
    return -1;
}

int main()
{
    char s[] = "googoole";
    char t[] = "oo";
    printf("%d\n", strindex(s, t));
}
