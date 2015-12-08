//
//  main.m
//  BOOL
//
//  Created by ruby on 15/12/2.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

void testBool(BOOL flag)
{
    if (flag) {
        NSLog(@"真");
    }else{
        NSLog(@"假");
    }
}

@interface CZLogin : NSObject

- (BOOL) validateUserName:(NSString *) userName andPassword:(NSString *) password;


@end

@implementation CZLogin

- (BOOL)validateUserName:(NSString *)userName andPassword:(NSString *)password
{
    if (userName == nil || [userName isEqualTo:@""]) {
        NSLog(@"用户名不能为空");
    }
    
    if (password == nil || [password isEqualTo:@""]) {
        NSLog(@"密码不能为空");
    }
    
    if ([userName isEqualTo:@"Louis"] && [password isEqualTo:@"123"]) {
        return YES;
    }
    
    return NO;
}

@end

int main(int argc, const char * argv[]) {
    
    for (int i = 10; i < 100; i++) {
        BOOL isDivisible = (i % 7 == 0);
        if (isDivisible) {
            NSLog(@"%d",i);
            break;
        }
    }
    
    testBool(YES);
    
    CZLogin *login = [CZLogin new];
    BOOL canLogin = [login validateUserName:@"Louis" andPassword:@"13"];
    if (canLogin) {
        NSLog(@"可以登录");
    }else{
        NSLog(@"登录失败");
    }
    
    return 0;
}
