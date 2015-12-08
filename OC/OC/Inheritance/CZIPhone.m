//
//  CZIPhone.m
//  OC
//
//  Created by ruby on 15/12/7.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZIPhone.h"

@implementation CZIPhone
- (void) setColor:(CZColor) color
{
    _color = color;
}

- (CZColor) color;
{
    return _color;
}

- (void) setRam:(int) ram
{
    _ram = ram;
}

- (int) ram
{
    return _ram;
}

- (void) setCamera:(NSString *) camera
{
    _camera = camera;
}

- (NSString *) camera
{
    return _camera;
}

- (void) call:(NSString *) phoneNum{
    NSLog(@"CZPhone 给 %@ 的人打电话.",phoneNum);
}

- (void) takePhoto
{
    NSLog(@"CZPhone takes photos.");
}
@end
