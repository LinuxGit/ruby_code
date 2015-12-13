//
//  Person.m
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setBook:(Book *)book
{
    _book = [book retain];
}

- (Book *)book
{
    return _book;
}

- (void)dealloc
{
    [_book release];
    NSLog(@"Person 对象被回收");
    [super dealloc];
}

@end
