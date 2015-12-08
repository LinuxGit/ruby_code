//
//  CZIPhone.h
//  OC
//
//  Created by ruby on 15/12/7.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum _CZColor{
    CZColorWhite,
    CZColorBlack
} CZColor;

@interface CZIPhone : NSObject
{
    CZColor _color;
    int _ram;
    NSString * _camera;
}

- (void) setColor:(CZColor) color;

- (CZColor) color;

- (void) setRam:(int) ram;

- (int) ram;

- (void) setCamera:(NSString *) camera;

- (NSString *) camera;

- (void) call:(NSString *) phoneNum;

- (void) takePhoto;

@end
