//
//  main.c
//  string
//
//  Created by ruby on 15/11/16.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>
#include <string.h>

void test() {
    char name[] = "ruby\n";
    int length = sizeof(name);
    
    printf("%d\n", length);
    printf("%s\n", name);
    
}

void test1() {
    char words[] = {'c', 'o', 'o', 'l'};
    
    printf("%s", words);
}

void printString(char str[])
{
    int i = 0;
    while (str[i] != '\0') {
        printf("%c", str[i++]);
    }
    printf("\n");
}

void test2() {
    char words[] = "good wife";
    char name[5] = {'m', 'y', 'l'};
    
    printString(name);
    printString(words);
    
}

int main(int argc, const char * argv[]) {
    
    char name[10];
//    scanf("%9s", name);
//    gets(name);
    fgets(name, sizeof(name), stdin);
    printString(name);

    return 0;
}
