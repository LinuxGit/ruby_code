//
//  MyProtocol.m
//  OC
//
//  Created by ruby on 15/12/15.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>
- (void) test;

- (void) test2;

@optional
- (void) test3;

@end