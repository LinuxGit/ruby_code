//
//  main.c
//  Operator
//
//  Created by ruby on 15/11/9.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

int test() {
    printf("请输入一个秒数：\n");
    int totalSeceond;
    scanf("%d", &totalSeceond);
    int minute = totalSeceond / 60;
    int second = totalSeceond % 60;
    printf("%d分%d秒\n", minute, second);
    return 0;
    
}

int test2() {
    int a = 10;
    int b = 4;
    double d = (double)a / b;
    printf("%lf", d);
    return 0;
}

int test3() {
    int a = 99;
    int size = sizeof(a);
    int size2 = sizeof(double);
    
    printf("%d\n", size);
    printf("%d\n", size2);
    
    return 0;
}

int main(int argc, const char * argv[]) {
    printf("请输入三个整数，以逗号隔开\n");
    int num1,num2,num3;
    scanf("%d,%d,%d",&num1,&num2,&num3);
    int max = num1 > num2 ? num1 : num2;
    max = max > num3 ? max : num3;
    printf("max = %d\n", max);
    
    return 0;
}
