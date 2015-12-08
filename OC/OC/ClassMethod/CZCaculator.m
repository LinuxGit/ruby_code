//
//  CZCaculator.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZCaculator.h"

@implementation CZCaculator

+ (double) sumOfNum:(double) num andOther:(double) other
{
    return num + other;
}

+ (double) minusOfNum:(double) num andOther:(double) other
{
    return num - other;
}

+ (double) productOfNum:(double) num andOther:(double) other
{
    return num * other;
}

+ (double) devisionOfNum:(double) num andOther:(double) other
{
    return num / other;
}

+ (double) squareOfNum:(double) num
{
    return num * num;
}

@end
