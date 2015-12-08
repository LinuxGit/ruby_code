//
//  CZPerson.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZPerson.h"

@implementation CZPerson

- (int)age
{
    return _age;
}

- (void)changeAge:(int)age
{
    _age = 20;
    
//    int _age = 10;
    self->_age = age;
}

@end
