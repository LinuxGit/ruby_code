//
//  Car.h
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int _speed;
}

- (void) setSpeed:(int) speed;
- (int) speed;

@end
