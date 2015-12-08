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
    int _age;
    NSString * _name;
}

- (int) age;

- (void) changeAge:(int) age;

@end
