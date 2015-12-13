//
//  Book.m
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)setPrice:(int)price
{
    _price = price;
}

- (int)price
{
    return _price;
}

- (void)dealloc
{
    NSLog(@"Book 对象被回收");
    [super dealloc];
}

@end
