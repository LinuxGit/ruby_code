//
//  main.c
//  char
//
//  Created by ruby on 15/11/14.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    char c = 'a';
    printf("%d\n", c);
    printf("%c\n", c);

}

char lowerToUpper(char lower) {
    
    if (lower >= 'a' && lower <= 'z') {
        return lower + ('A' - 'a');
    }
    
    return lower;
}

void test2() {
    char upper = lowerToUpper('b');
    printf("%c\n", upper);
}

int main(int argc, const char * argv[]) {
    
    printf("%d, %d\n", 6, '6');
    
    return 0;
}
