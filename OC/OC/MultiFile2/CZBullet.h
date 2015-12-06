//
//  CZBullet.h
//  OC
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
