//
//  main.m
//  OC
//
//  Created by ruby on 15/11/29.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
@public
    char *_name;
    int _age;
}

- (void) show;

- (void) eat:(char *) food;

- (void) eat:(char *)food using:(char *)tools;

@end

@implementation Person

- (void) show
{
    NSLog(@"name = %s,age = %d",_name,_age);
}

- (void) eat:(char *)food
{
    NSLog(@"吃了 %s",food);
}

- (void) eat:(char *)food using:(char *)tools
{
    NSLog(@"使用 %s 吃了 %s",tools,food);
}

@end

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSLog(@"Hello, World!");
//        printf("%d,%f,%lf,%c\n",10,10.2f,20.2,'a');
//        NSLog(@"%d,%f,%lf,%c",10,10.2f,20.2,'a');
//        NSLog(@"%@",@"哈哈");
//    }
    
    Person *p1 = [Person new];
    p1->_age = 10;
    p1->_name = "Louis";
    
//    NSLog(@"%p,%d",p1,p1->_age);
    
    [p1 show];
    
    [p1 eat:"beef"];
    
    [p1 eat:"beef" using:"knife"];
    
    return 0;
}
