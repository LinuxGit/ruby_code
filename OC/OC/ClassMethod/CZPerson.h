//
//  CZPerson.h
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZPerson : NSObject
{
@public
    int _age;
    NSString * _name;
}

- (void) setAge:(int) age;

+ (int) sumOfSum:(int)num andOther:(int) other;

+ (void) changePersonAge:(CZPerson *) person;

@end
