//
//  main.m
//  Encapsulation
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZCat.h"

int main(int argc, const char * argv[]) {
    
    CZCat * cat = [CZCat new];
    
    [cat setAge:100];
    
    [cat setName:@"小黑"];
    
    NSLog(@"age = %d, name = %@", [cat age],[cat name]);
    
    NSLog(@"age = %d",[[CZCat new] age]);
    
    NSLog(@"%@",cat);
    
    return 0;
}
