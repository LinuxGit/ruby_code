#include <stdio.h>

void squeeze(char s[], char t[])
{
    int i, j, k;
    for (i = j = 0; s[i] != '\0'; i++) {
        for (k = 0; t[k] != '\0' && t[k] != s[i]; k++)
            ;
        if (t[k] == '\0')
            s[j++] = s[i];
    }
    s[j] = '\0';
 }

 int main() {
     char s1[] = "abc";
     char s2[] = "cde";
     squeeze(s1, s2);
     printf("%s\n",s1);
     printf("%s\n",s2);
 }