//
//  main.c
//  stringExercise
//
//  Created by ruby on 15/11/19.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

int indexOfCharInString(char string[], char key) {
    
    int index = 0;
    
    while (string[index] != '\0') {
        if (string[index] == key) {
            return index;
        }
    }
    
    return -1;
}

int main(int argc, const char * argv[]) {
    
//    char name[] = "zsf";
    char names[][10] = {
        "zsf",
        "mcf",
        "oyf",
        "bdf",
        "dhf"
    };
    
    int len = sizeof(names) / sizeof(names[0]);
    for (int i = 0; i < len; i++) {
        printf("%s\n", names[i]);
    }
    
    
    return 0;
}
