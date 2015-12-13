//
//  main.m
//  MultiObjectMemManagement
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {
    
    Book *b = [[Book alloc] init];
    Person *p1 = [[Person alloc] init];
    
    [p1 setBook:b];
    
    [b release];
    b = nil;
    
    [p1 release];
    p1 = nil;
    
    return 0;
}
