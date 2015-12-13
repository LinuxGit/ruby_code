//
//  main.m
//  property2
//
//  Created by ruby on 15/12/13.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    Book *b = [[Book alloc] init];
    
    p.book = b;
    
    
    return 0;
}
