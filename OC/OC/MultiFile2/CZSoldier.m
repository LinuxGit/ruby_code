//
//  CZSoldier.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZSoldier.h"
#import "CZGun.h"
#import "CZBullet.h"

@implementation CZSoldier

- (void)shootTo:(CZSoldier *)other usingGun:(CZGun *)gun andBullet:(CZBullet *)bullet
{
    NSLog(@"%@ shoot to %@",_name,other->_name);
    [gun shootTo:other usingBullet:bullet];
}

@end
