//
//  main.c
//  functionPointer
//
//  Created by ruby on 15/11/22.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    printf("空参空返回值的函数\n");
}

void test1() {
    test();
    printf("%p\n", test);
    
    void (*methodP)();
    
    methodP = test;
    
    methodP();
    (*methodP)();
}

int sum(int num1, int num2) {
    return num1 + num2;
}

int minus(int num1, int num2) {
    return num1 - num2;
}

int main(int argc, const char * argv[]) {
    
    int (*somePointer)(int num1, int num2);
    somePointer = sum;
    
    int rs = somePointer(10, 20);
    printf("rs = %d\n", rs);
    
    somePointer = minus;
    rs = somePointer(10, 20);
    printf("rs = %d\n", rs);
    
    return 0;
}
