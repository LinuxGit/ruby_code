//
//  main.m
//  MRC
//
//  Created by ruby on 15/12/12.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    
    NSUInteger c = [p retainCount];
    
    NSLog(@"计数器 %ld",c);
    
    // retain 方法返回对象本身
    [p retain];
    NSLog(@"计数器 %ld",[p retainCount]);
    
    [p release];
    
    [p release];
    
    //空指针
    p = nil;
    
    [p release];
    
    return 0;
}
