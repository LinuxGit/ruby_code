//
//  main.m
//  autorelease
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Person *p = [[[Person alloc] init] autorelease];
//        p.age = 26;
        
        Person *p = [Person personWithAge:100];
    }
    return 0;
}