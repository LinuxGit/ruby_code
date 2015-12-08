//
//  main.m
//  Inheritance
//
//  Created by ruby on 15/12/7.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZIPhone.h"
#import "CZIPhone2.h"

int main(int argc, const char * argv[]) {
    
    CZIPhone * iphone = [CZIPhone new];
    [iphone call:@"110"];
    [iphone takePhoto];
    
    CZIPhone2 * iphone2 = [CZIPhone2 new];
    [iphone2 call:@"10086"];
    
//    [iphone2 light];
    
    [iphone2 takePhoto];
    return 0;
}
