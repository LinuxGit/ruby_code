//
//  main.m
//  ClassMethod
//
//  Created by ruby on 15/12/6.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZPerson.h"
#import "CZCaculator.h"

int main(int argc, const char * argv[]) {
    
    int sum = [CZPerson sumOfSum:10 andOther:20];
    NSLog(@"%d",sum);
    
    CZPerson * p = [CZPerson new];
    p->_age = 59;
    
    [CZPerson changePersonAge:p];
    NSLog(@"%d", p->_age);
    
    double num = 2.0;
    double num1 = 4.0;
    
    double rs = [CZCaculator sumOfNum:num andOther:num1];
    NSLog(@"%.2lf",rs);
    
    return 0;
}
