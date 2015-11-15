//
//  main.c
//  arrayAndFunction
//
//  Created by ruby on 15/11/15.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void changeArray(int array[]) {
    
    printf("array = %p\n", array);
    array[1] = 10;
}

void test() {
//  数组作为函数传递是地址传递
    int nums[] = {2, 1};
    printf("nums  = %p\n", nums);
    
    changeArray(nums);
    
    printf("%d\n", nums[1]);
    
}

void printArray(int array[], int count) {
   
    
    printf("[");
    for (int i = 0; i < count; i++) {
        printf("%d", array[i]);
        if (i != count - 1) {
            printf(",");
        }
    }
    printf("]\n");
    
}

void test2() {
    int nums[] = {1, 2, 3, 4, 5};
    
    int count = sizeof(nums) / sizeof(int);
    printArray(nums, count);
}

void recordArray(int array[], int count) {
    for (int i = 0; i < count; i++) {
        printf("请输入第%d个学生的成绩\n", i+1);
        scanf("%d", &array[i]);
    }
    
}

double averageOfArray(int array[], int count) {
    int sum = 0;
    
    for (int i = 0; i < count; i++) {
        sum += array[i];
    }
    
    double average = (double)sum / count;
    
    return average;

}

void test3(){
    int countOfStudent;
    
    printf("请输入班级人数:\n");
    scanf("%d", &countOfStudent);
    
    int scores[countOfStudent];
    recordArray(scores, countOfStudent);
    double average = averageOfArray(scores, countOfStudent);
    printf("学生平均成绩为: %.1lf\n", average);
    
}

void bubbleSort(int array[], int count) {
    for (int i = 0; i < count -1; i++) {
        for (int j = 0; j < count - 1 - i; j++) {
            if (array[j] > array[j+1]) {
                int temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    }
}



int main(int argc, const char * argv[]) {
    
    int nums[5] = {8, 6, 10, 2, 1};
    
    int length = sizeof(nums) / sizeof(int);
    printArray(nums, length);
    bubbleSort(nums, length);
    printArray(nums, length);

    return 0;
}

