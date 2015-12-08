//
//  CZCat.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZCat.h"

@implementation CZCat

- (void)setAge:(int)age
{
    if (age < 0) {
        NSLog(@"年龄必须大于等于0");
        return;
    }
    
    _age = age;
}

- (int)age
{
    return _age;
}

- (void) setName:(NSString *)name {
    _name = name;
}

- (NSString *)name
{
    return _name;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"name = %@, age = %d", _name, _age];
}

@end
