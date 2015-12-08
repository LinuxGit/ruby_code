//
//  main.m
//  ObjectAndFunction
//
//  Created by ruby on 15/12/3.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
@public
    int age;
}

- (void) say:(NSString *) words;

@end


@implementation Person

- (void)say:(NSString *)words
{
    NSLog(@"%@",words);
}

@end

void changePerson(Person *person)
{
    person->age = 10;
    [person say:@"大家好"];
}

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];
    p->age = 1;
    
    changePerson(p);
    NSLog(@"%d",p->age);
    
    return 0;
}
