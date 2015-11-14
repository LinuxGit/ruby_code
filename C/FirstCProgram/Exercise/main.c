//
//  main.c
//  Exercise
//
//  Created by ruby on 15/11/8.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

int test() {
    
    printf("*************\n");
    printf("** hello c **\n");
    printf("*************\n");
    
    int score;
    score = 105;
    
    float f = 10.1f;
    double  d = 10.0;
    char c = 'a';
    
    printf("%d\n", score);
    printf("%.2f\n", f);
    printf("%06.2f\n", f);
    printf("%c\n", c);
    printf("%.2lf\n", d);
    
    printf("%d, %.2f, %.4lf, %c\n", score, f, d, c);
    
    int i = 1;
    int amount = 9988;
    printf("%03d\n", i);
    printf("%3d\n", i);
    printf("%-3d\n", i);
    printf("%03d\n", amount);
    
    return 0;
}

int test2() {
    int i;
    scanf("%i", &i);
    printf("%d\n", i);
    
    float f;
    scanf("%f", &f);
    printf("%.2f\n", f);
    
    return 0;
}

void test3() {
    int a, b, c, d;
    scanf("%d,%d,%d,%d",&a,&b,&c,&d);
    printf("%d,%d,%d,%d\n",a,b,c,d);
    
}

int theNumberOfFish(int n) {
    int totalFish = 6;
    
    for (int i = totalFish; 1; i++) {
        int leftFish = i;
        int isFind = 1;
        
        for (int j = 0; j < n; j++) {
            if ((leftFish - 1) % n == 0) {
                leftFish = ((leftFish - 1) / n) * (n - 1);
            } else {
                isFind = 0;
                break;
            }
        }
        
        if (isFind) {
            totalFish = i;
            printf("%d", i);
            break;
         }
    }

    return totalFish;
}

int main() {
    
    int total = theNumberOfFish(2);
    printf("%d\n", total);
    return 0;
}





