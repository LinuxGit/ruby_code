//
//  main.c
//  pointer
//
//  Created by ruby on 15/11/19.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    int num = 10;
    
    int *p;
    p = &num;
    
    *p = 20;
    printf("num = %d\n", num);
}

void test2() {
    int num2 = 20;
    int *p2 = &num2;
    
    printf("%p\n", p2);
    *p2 = 40;
    printf("%d, %d\n", num2, *p2);
    
    char c = 'a';
    
    char *pc = &c;
    *pc = 10;
    
    printf("%p\n", p2);
    
}

void mySwap(int *num1, int *num2) {
    int temp = *num1;
    
    *num1 = *num2;
    *num2 = temp;
}

void testSwap() {
    int a = 10;
    int b = 20;
    
    printf("%d, %d\n", a, b);
    
    mySwap(&a, &b);
    
    printf("%d, %d\n", a, b);
}

int sumAndMinus(int num1, int num2, int *minus) {
    *minus = num1 - num2;
    return num1 + num2;
}

void sumAndMinus2(int num1, int num2, int *sum, int *minus) {
    *sum = num1 + num2;
    *minus = num1 - num2;
}

void testSumAndMinus() {
    int a = 10;
    int b = 20;
    
    int minus;
    int sum;
    
    //    int rs = sumAndMinus(a, b, &minus);
    //    printf("%d, %d\n",rs,minus);
    
    sumAndMinus2(a, b, &sum, &minus);
    printf("%d, %d\n", sum, minus);
    
}

void multiPointer() {
    int num = 10;
    int *p = &num;
    
    int **pp = &p;
    
    **pp = 30;
    printf("%d\n", num);
    
    int ***ppp = &pp;
    ***ppp = 50;
    printf("%d\n",num);
}

int main(int argc, const char * argv[]) {
    
    printf("%lu\n", sizeof(int *));
    printf("%lu\n", sizeof(char *));
    printf("%lu\n", sizeof(float *));
    printf("%lu\n", sizeof(float **));
    
    return 0;
}
