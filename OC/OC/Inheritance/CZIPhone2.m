//
//  CZIPhone2.m
//  OC
//
//  Created by ruby on 15/12/7.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZIPhone2.h"

@implementation CZIPhone2

- (void)light
{
    if (_flashlight == NO) {
        NSLog(@"打开闪光灯");
        _flashlight = YES;
    }else{
        NSLog(@"已经打开了");
    }
}

- (void) takePhoto
{
    [self light];
    [super takePhoto];
    _flashlight = NO;
    NSLog(@"闪光灯关闭了.");
}

@end
