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
    [_book release];
    [_name release];
    
    [super dealloc];
}

@end
