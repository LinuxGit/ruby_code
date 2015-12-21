//
//  main.m
//  NSRange
//
//  Created by ruby on 15/12/16.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//    NSRange r = NSMakeRange(2, 4);
    
    NSString *str = @"I love OC";
    NSRange range = [str rangeOfString:@"ve O"];
    
    NSLog(@"loc = %ld, length = %ld",range.location, range.length);
    
    return 0;
}