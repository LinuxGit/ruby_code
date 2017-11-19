//
//  main.c
//  stringStorage
//
//  Created by ruby on 15/11/21.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void defineString() {
    char name[] = "xhh";
    //    char name[] = {'x', 'h', 'h', '\0'};
    name[1] = 'w';
    printf("%s\n", name);
    
    char *words = "today";
    char *sb = "today";
    
    printf("%p\n", words);
    printf("%p\n", sb);
}

void testConst() {
//    const int a = 10;
//    const int nums[] = {1, 2, 3};
//    const char *str = "dzq";
    
}

void defineStringArray() {
    char names[][20] = {
        "CGX",
        "ZBZ",
        "XTF",
        "WF",
        "LYP"
    };
    
    names[0][0] = 'c';
    printf("%s\n", names[0]);
    
}

int stringLength(char *string) {
    
    int length = 0;
    
    while (string[length] != '\0') {
        length++;
    }
    
    return length;
}

void reverseString(char *string) {
    int len = stringLength(string);
    
    char *start = string;
    char *end = string + len - 1;
    
    while (start < end) {
        char temp = *start;
        *start = *end;
        *end = temp;
        
        start++;
        end--;
    }
}

void testString() {
    char str[] = "abcde";
    int len = stringLength(str);
    printf("len = %d\n", len);
    
    reverseString(str);
    printf("%s\n", str);
}

int main(int argc, const char * argv[]) {
    
    int *pi = malloc(sizeof(int));
    
    if (pi != NULL) {
        *pi = 20;
        printf("%d\n", *pi);
        
        free(pi);
        printf("%d\n", *pi);
    }
    
    return 0;
}
