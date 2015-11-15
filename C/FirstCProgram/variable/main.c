//
//  main.c
//  variable
//
//  Created by ruby on 15/11/14.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void test() {
    
    int a = 10;
    int b = 5;
    
    printf("%p\n", &a);
    printf("%p\n", &b);
    
    char c = 'a';
    char *p = &c;
    printf("%p, %d\n",p,*p);
    
}

int main(int argc, const char * argv[]) {
    
    int a = (1 << 31);
    printf("最小 %d\n", a);
    
    short h = (1<<15);
    printf("%hd\n", h);
    
    long l = ((long)1 << 63);
    printf("%ld\n", l);
    
    long long ll = ((long long)1 << 63);
    printf("%lld\n", ll);
    
    unsigned int ui = 1;
    printf("%u\n", ui);
    
    unsigned short us = 9;
    printf("%hu\n", us);
    
    unsigned long lu = 1;
    printf("%lu\n", lu);
    
    return 0;
}
