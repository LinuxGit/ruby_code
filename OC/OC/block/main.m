//
//  main.m
//  block
//
//  Created by ruby on 15/12/14.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    typedef int (^MyBlock)(int, int);
    
    MyBlock sumBlock = ^(int a, int b) {
        return a + b;
    };
    
    MyBlock minusBlock = ^(int a, int b) {
        return  a - b;
    };
    
    NSLog(@"%d - %d", sumBlock(10, 9), minusBlock(10, 8));
    
    return 0;
}

void test()
{
    void (^myblock)() = ^{
        NSLog(@"---------");
        NSLog(@"---------");
    };
    
    myblock();
}

void test2()
{
    int (^sumblock)(int,int) = ^(int a, int b){
        return  a + b;
    };
    
    int c = sumblock(10, 11);
    
    NSLog(@"%d",c);
    
    void (^lineBlock)(int) = ^(int n)
    {
        for (int i = 0; i<n; i++) {
            NSLog(@"----------");
        }
    };
    
    lineBlock(5);
}