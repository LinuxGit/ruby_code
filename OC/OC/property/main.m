//
//  main.m
//  property
//
//  Created by ruby on 15/12/8.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZPerson.h"

int main(int argc, const char * argv[]) {
    
    CZPerson * p = [CZPerson new];
    
    p.age = -100;
    
    NSLog(@"%@",p);
    
    id person = p;
    [person setAge:20];
    
    NSLog(@"%@",person);
    
    
    return 0;
}
