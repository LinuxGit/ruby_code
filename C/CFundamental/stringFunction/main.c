//
//  main.c
//  stringFunction
//
//  Created by ruby on 15/11/18.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>
#include <string.h>

void test1() {
    int len = strlen("today");
    printf("%d\n", len);
    
}

void testStrcpy() {
    char src[] = "today";
    char dest[10] = "hehehehehe";
    
    strcpy(dest, src);
    printf("%s\n", dest);
    
    for (int i = 0; i < 10; i++) {
        printf("%c", dest[i]);
    }
    
    printf("\n");
    
}

void testStrncpy() {
    char src[] = "today is a good day";
    char dest[10];
    
    int len = sizeof(dest);
    
    strncpy(dest,src,len-1);
    printf("%s\n", dest);
    
}

void testStrcat() {
    char dest[20] = "tod\0ay ";
    char src[] = "good day";
    
    strcat(dest, src);
    printf("%s\n", dest);
    
}

void testStrncat() {
    char dest[20] = "tod\0ay ";
    char src[] = "good day";
    
    size_t len = sizeof(dest) - strlen(dest) - 1;
    strncat(dest,src,len);
    printf("%s\n", dest);
    
}

int main(int argc, const char * argv[]) {
    
    char src[] = "a";
    char dest[] = "c";
    
    int rs = strcmp(src, dest);
    printf("%d\n", rs);
    
    return 0;
}
