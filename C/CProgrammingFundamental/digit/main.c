//
//  main.c
//  digit
//
//  Created by ruby on 15/11/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    
    int a = 13;
    int b = 0b1101;
    printf("a = %d\n", a);
    printf("b = %d\n", b);
    
    int o = 015;
    printf("o = %d\n", o);
    
    int x = 0xd;
    printf("x = %d\n", x);
    
    int num = 13;
    printf("%O\n", num);
    printf("%X\n", num);
}

void test2() {
    int a = 2;
    int rs = a << 3;
    printf("%d\n", rs);
}

void swap() {
    int a = 10;
    int b = 20;
    
    //    a = a - b;
    //    b = a + b;
    //    a = b - a;
    
    a = a ^ b;
    b = a ^ b;
    a = a ^ b;
    
    printf("%d, %d\n,", a, b);
    
}

void evenOrOdd() {
    int a = 10;
    
    if (a & 1) {
        printf("奇数\n");
    } else {
        printf("偶数\n");
    }
}

void printBinary(int num) {
    int length = sizeof(num) * 8;
    
    for (int i = 0; i < length; i++) {
        int b = (num >> (length - 1 - i) & 1);
        if (i % 4 == 0 && i != 0) {
            printf(" ");
        }
        printf("%d", b);
    }
    
    printf("\n");

}

int main(int argc, const char * argv[]) {
    
    printBinary(10);
    
    return 0;
}














