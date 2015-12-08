//
//  main.m
//  MultiFile2
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CZSoldier.h"
#import "CZGun.h"
#import "CZBullet.h"

int main(int argc, const char * argv[]) {
    
    CZSoldier * soldier1 = [CZSoldier new];
    soldier1->_name = @"大饼";
    soldier1->_life = 100;
    
    CZSoldier * enemy = [CZSoldier new];
    enemy->_name = @"油条";
    enemy->_life = 20;
    
    CZGun * gun = [CZGun new];
    gun->_bulletCount = 10;
    gun->_shootRange = 100;
    
    CZBullet * bullet = [CZBullet new];
    bullet->_power = 10;
    
    [soldier1 shootTo:enemy usingGun:gun andBullet:bullet];
    [soldier1 shootTo:enemy usingGun:gun andBullet:bullet];
    
    return 0;
}
