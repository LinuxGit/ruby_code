//
//  CZBeauty.h
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZPhone.h"

@interface CZBeauty : NSObject
{
    NSString * _name;
}

- (void) setName:(NSString *) name;

- (NSString *) name;

- (void) callToTuHaoWithPhone:(CZPhone *) phone;

- (void) sendMessageToDiaoSi;

@end
