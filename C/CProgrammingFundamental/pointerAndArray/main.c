//
//  main.c
//  pointerAndArray
//
//  Created by ruby on 15/11/21.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    int nums[] = {1, 2, 3, 4, 5};
    int *p = nums;
    
    printf("%d,%d\n", nums[1], p[1]);
    
    printf("%p\n", nums);
    printf("%p\n", nums+1);
    
    printf("%p\n", p);
    printf("%p\n", p+1);
    
}

void test2() {
    int nums[3][2] = {{1, 2}, {3, 4}, {5, 6}};
    
    int *p = nums[0];
    
    printf("%p\n", p);
    printf("%p\n", nums);
    
    for (int i = 1; i < 6; i++) {
        printf("%d ", *(p + i));
    }
}

// 定义指针数组
void test3() {
    int a = 10;
    int b = 20;
    int c = 30;
    
    int *ps[3] = {&a, &b, &c};
    printf("%d,%d,%d",*ps[0],*ps[1],*ps[2]);
    
}

void test4() {
    int nums[3][2] = {{1, 2}, {3, 4}, {5, 6}};
    int (*ps)[2];
    
    ps = nums;
    
    printf("%p\n", nums);
    printf("%p\n", nums+1);
    
    printf("%p\n", ps);
    printf("%p\n", ps+1);
    
    int num = ps[0][1];
    printf("%d\n", num);
    
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 2; j++) {
            printf("%d ", ps[i][j]);
        }
        printf("\n");
    }
    
}

void printNumByte(int num) {
    
    char *cp = &num;
    for (int i = 0; i < sizeof(num); i++) {
//        printf("%d\n", *(cp +i));
        printf("%d\n", *cp++);
    }
    
}

void testPrintNumByte() {
    int num = 1024;
    printNumByte(num);
}

int main(int argc, const char * argv[]) {
    
    char chars[] = {'a', 'b', 'c'};
    char *pointer = chars;
    
    printf("%c\n", *(pointer + 1));
    printf("%c\n", chars[1]);
    
    return 0;
}
