//
//  main.m
//  Class
//
//  Created by ruby on 15/11/30.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum _CZColor{
    CZColorWhite,
    CZColorBlack,
    CZColorYellow
} CZColor;

typedef struct _CZPoint{
    int x;
    int y;
} CZPoint;

@interface CZZombies : NSObject
{
@public
    int _life;
    CZColor _color;
    CZPoint _position;
}

- (void) walkTo:(CZPoint) position;

- (void) bite;

@end

@implementation CZZombies

- (void) walkTo:(CZPoint) position
{
    _position = position;
    NSLog(@"走到了(%d,%d)的位置",_position.x,_position.y);
}

- (void) bite
{
    NSLog(@"咬");
}

@end


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
    }
    
    CZZombies *zombie = [CZZombies new];
    
    CZPoint position = {10,10};
    [zombie walkTo:position];
    
    return 0;
}
