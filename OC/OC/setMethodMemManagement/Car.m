//
//  Car.m
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void) setSpeed:(int) speed
{
    _speed = speed;
}
- (int) speed
{
    return _speed;
}

- (void)dealloc
{
    NSLog(@"速度为%d的Car对象被回收了",self.speed);
    [super dealloc];
}
@end
