//
//  Person.m
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) setCar:(Car *) car
{
    if (car != _car) {
        [_car release];
        _car = [car retain];
    }
}

- (Car *) car
{
    return _car;
}

- (void) setAge:(int) age
{
    _age = age;
}

- (int) age
{
    return _age;
}

- (void)dealloc
{
    [_car release];
    NSLog(@"%d岁的Person对象被回收了",_age);
    [super dealloc];
}

@end
