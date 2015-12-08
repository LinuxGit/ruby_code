//
//  CZCat.h
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZCat : NSObject
{
    int _age;
    NSString * _name;
}

- (void) setAge:(int) age;

- (int) age;

- (void) setName:(NSString *) name;

- (NSString *) name;

@end
