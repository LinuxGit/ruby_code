//
//  User.m
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "User.h"

@implementation User

- (void)dealloc
{
    [_name release];
    [_account release];
    [_password release];
    [_icon release];
    [_phone release];
    [super dealloc];
}

@end
