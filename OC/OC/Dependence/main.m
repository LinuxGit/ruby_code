//
//  main.m
//  Dependence
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZBeauty.h"

int main(int argc, const char * argv[]) {
    
    CZBeauty * beauty = [CZBeauty new];
    CZPhone * phone = [CZPhone new];
    
    [beauty setName:@"fbb"];
    [beauty callToTuHaoWithPhone:phone];
    [beauty sendMessageToDiaoSi];

    return 0;
}
