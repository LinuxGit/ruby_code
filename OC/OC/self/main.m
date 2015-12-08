//
//  main.m
//  self
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZPerson.h"

int main(int argc, const char * argv[]) {
    
    CZPerson * person = [CZPerson new];
    [person changeAge:60];
    NSLog(@"%d",[person age]);
    
    return 0;
}
