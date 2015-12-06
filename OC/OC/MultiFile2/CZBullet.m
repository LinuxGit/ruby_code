//
//  CZBullet.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZBullet.h"
#import "CZSoldier.h"

@implementation CZBullet

- (void) flyTo:(CZSoldier *)enemy
{
    if (enemy->_life >= 10) {
        enemy->_life -= 10;
    }else{
        enemy->_life = 0;
    }
    
    NSLog(@"敌人被打了一枪");
    
    if (enemy->_life == 0) {
        NSLog(@"%@ was killed.",enemy->_name);
    }    
}

@end
