//
//  main.c
//  enum
//
//  Created by ruby on 15/11/25.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

enum Sex{
    Man,
    Woman,
    Other
};

enum Season{
    Spring = 1,
    Summer,
    Autumn,
    Winter
};

void printSeason(enum Season season) {
    switch (season) {
        case Spring:
            printf("春季\n");
            break;
        case Summer:
            printf("夏季\n");
            break;
        case Autumn:
            printf("秋季\n");
            break;
        case Winter:
            printf("冬季\n");
            break;
            
        default:
            break;
    }
}

int main(int argc, const char * argv[]) {
    
    printf("%d, %d, %d\n", Man, Woman, Other);
    printf("%d, %d, %d, %d\n", Spring, Summer, Autumn, Winter);
    
    enum Season season = Winter;
    printSeason(season);
    
    return 0;
}
