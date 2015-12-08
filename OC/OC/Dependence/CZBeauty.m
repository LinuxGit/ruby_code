//
//  CZBeauty.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZBeauty.h"

@implementation CZBeauty

- (void) setName:(NSString *) name
{
    _name = name;
}

- (NSString *) name
{
    return _name;
}

- (void)callToTuHaoWithPhone:(CZPhone *)phone
{
    NSLog(@"给土豪打电话了");
    [phone call:@"土豪的电话号码"];
}

- (void) sendMessageToDiaoSi
{
    NSLog(@"给屌丝发送短信了");
    CZPhone * phone = [CZPhone new];
    [phone sendMessage:@"呵呵，要请我看电影吗？"];
}

@end
