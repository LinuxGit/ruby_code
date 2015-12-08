//
//  CZPerson.m
//  OC
//
//  Created by ruby on 15/12/8.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZPerson.h"

@implementation CZPerson

- (void) setAge:(int) age
{
    if (age >= 0) {
        _age = age;
    }
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"age = %d",_age];
}

@end
