//
//  Dog.h
//  OC
//
//  Created by ruby on 15/12/14.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Dog : NSObject

@property (nonatomic,weak) Person *person;

@end
