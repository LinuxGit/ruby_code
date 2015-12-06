//
//  CZSoldier.h
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CZGun;
@class CZBullet;

@interface CZSoldier : NSObject
{
@public
    NSString * _name;
    int _life;
}

- (void) shootTo:(CZSoldier *) other usingGun:(CZGun *) gun andBullet:(CZBullet *) bullet;

@end
