//
//  CZPhone.h
//  OC
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZPhone : NSObject

- (void) sendMessage:(NSString *) message;

- (void) call:(NSString *) phoneNum;

@end
