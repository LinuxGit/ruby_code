//
//  main.m
//  setMethodMemManagement
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    p.age = 20;
    
    Car *c1 = [[Car alloc] init];
    c1.speed = 250;
    
    p.car = c1;
    
    Car *c2 = [[Car alloc] init];
    c2.speed = 300;
    
    p.car = c2;
    
    [c2 release];
    [c1 release];
    [p release];
    
    return 0;
}
