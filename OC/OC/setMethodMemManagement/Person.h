//
//  Person.h
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject
{
    Car * _car;
    int _age;
}

- (void) setCar:(Car *) car;
- (Car *) car;

- (void) setAge:(int) age;
- (int) age;

@end
