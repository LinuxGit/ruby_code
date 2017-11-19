//
//  main.c
//  pointerFunction
//
//  Created by ruby on 15/11/22.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *words() {
    return "Hello, Swift.";
}

char *words3() {
    int len = 20;
    char *words = calloc(len, sizeof(char));
    strncpy(words, "Hello, Swift.\n", len -1);
    return words;
}

int main(int argc, const char * argv[]) {

//    char *w = words();
//    printf("%s\n", w);
    
    char *w = words3();
    printf("%s", w);
    free(w);
    w = NULL;
    
    char c = 'a';
    w = &c;
    printf("%c\n", *w);
    
    return 0;
}
