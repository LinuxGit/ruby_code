//
//  main.m
//  Foundation
//
//  Created by ruby on 15/12/15.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    CGPoint p1 = NSMakePoint(10, 10);
    NSPoint p2 = CGPointMake(10, 10);
    
    NSSize s1 = CGSizeMake(100, 50);
    CGSize s2 = NSMakeSize(100, 50);
    
    CGRect r1 = CGRectMake(0, 0, 100, 50);
    
    NSLog(@"%@", NSStringFromPoint(p2));
    NSLog(@"%@", NSStringFromSize(s1));
    NSLog(@"%@", NSStringFromRect(r1));
    
    CGRect r2 = {{0, 0}, {100, 90}};
    CGRect r3 = {p1, s2};
//    CGPointZero == CGPointMake(0, 0);
    
    return 0;
}
