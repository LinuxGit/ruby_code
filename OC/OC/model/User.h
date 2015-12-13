//
//  User.h
//  OC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SexMan,
    SexWoman
} Sex;

typedef struct {
    int year;
    int month;
    int day;
} Date;

@interface User : NSObject

@property (nonatomic,retain) NSString *name;

@property (nonatomic,retain) NSString *account;

@property (nonatomic,retain) NSString *password;

@property (nonatomic,retain) NSString *icon;

@property (nonatomic,assign) Sex sex;

@property (nonatomic,retain) NSString *phone;

@property (nonatomic,assign) Date birthday;

@end
