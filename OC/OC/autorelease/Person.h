//
//  Person.h
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,assign) int age;

+ (id) person;

+ (id) personWithAge:(int) age;

@end