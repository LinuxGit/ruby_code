//
//  main.m
//  NSString
//
//  Created by ruby on 15/12/19.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *s1 = @"jack";
    NSString *s2 = [[NSString alloc] initWithFormat:@"age is %d", 26];
    NSString *s3 = [[NSString alloc] initWithUTF8String:"jack"];
    const char *s4 = [s3 UTF8String];
    
//    [@"Jack\nJack" writeToFile:@"/Users/ruby/Desktop/my.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    NSMutableString *s5 = [NSMutableString stringWithFormat:@"My age is 26"];
    [s5 appendString:@" 11 12"];
    
    NSRange range = [s5 rangeOfString:@"is"];
    [s5 deleteCharactersInRange:range];
    
    NSLog(@"s5 = %@", s5);
    
    return 0;
}
