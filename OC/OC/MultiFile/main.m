//
//  main.m
//  MultiFile
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CZSoldier;

@interface CZBullet : NSObject
{
    @public
    int _power;
}

- (void) flyTo:(CZSoldier *) enemy;

@end

@interface CZGun : NSObject
{
@public
    int _bulletCount;
    double _shootRange;
}

- (void) shootTo:(CZSoldier *)enemy usingBullet:(CZBullet *) bullet;

@end

@interface CZSoldier : NSObject
{
@public
    NSString * _name;
    int _life;
}

- (void) shootTo:(CZSoldier *) other usingGun:(CZGun *) gun andBullet:(CZBullet *) bullet;

@end

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


@implementation CZGun

- (void) shootTo:(CZSoldier *)enemy usingBullet:(CZBullet *)bullet
{
    NSLog(@"shoot to %@",enemy->_name);
    [bullet flyTo:enemy];
}

@end


@implementation CZSoldier

- (void)shootTo:(CZSoldier *)other usingGun:(CZGun *)gun andBullet:(CZBullet *)bullet
{
    NSLog(@"%@ shoot to %@",_name,other->_name);
    [gun shootTo:other usingBullet:bullet];
}

@end


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
