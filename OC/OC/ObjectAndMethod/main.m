//
//  main.m
//  ObjectAndMethod
//
//  Created by ruby on 15/12/3.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZDog : NSObject
{
@public
    NSString *_name;
}

- (void) biteOtherDog:(CZDog *) other;

@end

@implementation CZDog

- (void)biteOtherDog:(CZDog *)other
{
    NSLog(@"%@ bites %@",_name,other->_name);
}

@end

@interface CZPerson : NSObject

- (void) changeDog:(CZDog *) dog;

- (void) orderDog:(CZDog *) dog biteOtherDog:(CZDog *) other;

@end

@implementation CZPerson

- (void) changeDog:(CZDog *) dog
{
    dog->_name = @"大黄";
}

- (void) orderDog:(CZDog *) dog biteOtherDog:(CZDog *) other
{
    [dog biteOtherDog:other];
}

@end

int main(int argc, const char * argv[]) {
    
    CZDog *dog = [CZDog new];
    dog->_name = @"旺财";
    
    CZDog *other = [CZDog new];
    other->_name = @"小黑";
    
    CZPerson *person = [CZPerson new];
    
    [person changeDog:dog];
    
    NSLog(@"%@",dog->_name);
    
    [person orderDog:dog biteOtherDog:other];
    
    return 0;
}
