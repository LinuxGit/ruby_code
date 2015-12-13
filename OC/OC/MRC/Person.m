//
//  Person.m
//  OC
//
//  Created by ruby on 15/12/12.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) dealloc
{
    NSLog(@"Person 对象被回收");
    [super dealloc];
}

@end
