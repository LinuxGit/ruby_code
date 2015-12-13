//
//  main.m
//  ARC
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    Dog *d = [[Dog alloc] init];
    
    p.dog = d;
    d.person = p;
    
    return 0;
}
