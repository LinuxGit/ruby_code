//
//  main.c
//  Functions
//
//  Created by ruby on 15/11/11.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void printOneRose() {
    printf(" {@} \n");
    printf(" \\|/\n");
    printf("  | \n");
    printf("  | \n");
}

void printManyRose(int num) {
    if(num < 1) {
        printf("传递的参数非法\n");
        return;
    }
    for (int i = 0;i < num; i++) {
        printOneRose();
    }
}

int sum(int num1, int num2) {
    return num1 + num2;
}

int shang(int num1, int num2) {
    if (num2 == 0) {
        printf("除数不能为0\n");
        return 0;
    }
    return num1 / num2;
}

double pi() {
    return 3.1415926;
}

int main(int argc, const char * argv[]) {
    //printManyRose(-1);
    
    /*
    double rs = pi();
    printf("rs = %lf\n", rs);
    
    int a = 40;
    int b = 20;
    
    int result  = sum(a, b);
    printf("result = %d\n", result);
    */
    
    int rs = shang(5, 2);
    printf("rs = %d\n", rs);
    return 0;
}
