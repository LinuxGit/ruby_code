//
//  CZPhone.m
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import "CZPhone.h"

@implementation CZPhone

- (void) sendMessage:(NSString *) message
{
    NSLog(@"发送一条 %@ 短信",message);
}

- (void) call:(NSString *) phoneNum
{
    NSLog(@"给电话号码为 %@ 的人打电话",phoneNum);
}

@end
