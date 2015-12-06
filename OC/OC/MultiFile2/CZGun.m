//
//  CZGun.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZGun.h"
#import "CZBullet.h"
#import "CZSoldier.h"

@implementation CZGun

- (void) shootTo:(CZSoldier *)enemy usingBullet:(CZBullet *)bullet
{
    NSLog(@"shoot to %@",enemy->_name);
    [bullet flyTo:enemy];
}

@end
