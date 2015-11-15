//
//  main.c
//  array
//
//  Created by ruby on 15/11/15.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    int scores[5];
    
    scores[0] = 10;
    scores[1] = 70;
    scores[2] = 80;
    scores[3] = 90;
    scores[4] = 100;
    
    //    printf("scores[1] = %d\n", scores[1]);
    
    for (int i = 0; i < 5; i++) {
        printf("scores[%d] = %d\n", i, scores[i]);
    }
    
}

void test2() {
    int scores[5];
    
    scores[0] = 70;
    scores[1] = 80;
    scores[2] = 89;
    scores[3] = 90;
    scores[4] = 88;
    
    int count = sizeof(scores) / sizeof(int);
    
    for (int i = 0; i < count; i++) {
        printf("%d ", scores[i]);
    }
}

void test3() {
    int length = 5;
    int nums[length];
    
    nums[0] = 55;
    nums[1] = 60;
    nums[2] = 80;
    nums[3] = 90;
    nums[4] = 70;
    
    for (int i = 0; i < length; i++) {
        printf("%d ", nums[i]);
    }
}

void test4() {
    //    int nums[5] = {1, 2, 3, 4 ,5};
    //    int nums[5] = {1, 2};
    int nums[5] = {[3] = 5, [4] = 10};
    
    int count = sizeof(nums) / sizeof(int);
    
    for (int i = 0; i < count; i++) {
        printf("%d ", nums[i]);
    }
}

void test5() {
    char chars[] = {'a', 'b', 'c'};
    printf("%p\n", chars);
    printf("%p\n", &chars[0]);
    printf("%p\n", &chars[1]);
    printf("%p\n", &chars[2]);
    
    int count = sizeof(chars) / sizeof(char);
    
    for (int i = 0; i < count; i++) {
        printf("%p\n", &chars[i]);
    }
}

int main(int argc, const char * argv[]) {
// 数组下标越界导致问题
    int length = 1;
    char nums2[1] = {2};
    
    nums2[1] = 20;
    printf("%d\n", length);
    
    return 0;
}














