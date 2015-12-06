//
//  CZGun.h
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CZSoldier;
@class CZBullet;

@interface CZGun : NSObject

{
@public
    int _bulletCount;
    double _shootRange;
}

- (void) shootTo:(CZSoldier *)enemy usingBullet:(CZBullet *) bullet;

@end
