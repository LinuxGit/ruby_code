//
//  main.m
//  NSString
//
//  Created by ruby on 15/12/1.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *str = @"天气冷了，注意身体！";
    NSLog(@"%@",str);
    
//    NSString *str1 = [NSString new];
    NSString *str1 = [NSString alloc];
    str1 = [str1 initWithUTF8String:"努力学习OC!"];
    NSLog(@"%@",str1);
    
    NSString *str2 = [NSString stringWithFormat:@"努力学习IOS %d!", 9];
    NSLog(@"%@",str2);
    
    long len = [str length];
    NSLog(@"%ld", len);
    
    char *strc = "天气冷了，注意身体！";
    len = strlen(strc);
    NSLog(@"%ld",len);
    
    return 0;
}
