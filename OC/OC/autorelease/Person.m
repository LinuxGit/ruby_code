//
//  Person.m
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    NSLog(@"age 为 %d 的Person 对象已被回收", _age);
    [super dealloc];
}

+ (id)person
{
    return [[[self alloc] init] autorelease];
}

+ (id)personWithAge:(int)age
{
    Person *p = [self person];
    p.age = age;
    return p;
}

@end
