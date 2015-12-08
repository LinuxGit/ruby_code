//
//  CZPerson.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZPerson.h"

@implementation CZPerson

- (void)setAge:(int)age
{
    _age = age;
}

+ (int) sumOfSum:(int)num andOther:(int) other
{
    return num + other;
}

+ (void)changePersonAge:(CZPerson *)person
{
    [person setAge:20];
}

@end
