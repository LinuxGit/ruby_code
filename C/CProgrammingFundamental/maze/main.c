//
//  main.c
//  maze
//
//  Created by ruby on 15/11/15.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>




int main(int argc, const char * argv[]) {
    
    char map[6][6] = {
        {'#', '#', '#', '#', '#', '#'},
        {'#', 'O', '#', ' ', ' ', ' '},
        {'#', ' ', '#', '#', ' ', '#'},
        {'#', ' ', ' ', '#', ' ', '#'},
        {'#', '#', ' ', ' ', ' ', '#'},
        {'#', '#', '#', '#', '#', '#'}
    };
    
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 6; j++) {
            printf("%c", map[i][j]);
        }
        printf("\n");
    }
    
    
    char street = ' ';
    int currentX = 1;
    int currentY = 1;
    
    while (1) {
        printf("请移动小人,w表示向上，s表示向下,a表示向左,d表示向右\n");
        
        char direction;
        scanf(" %c", &direction);
        
        switch (direction) {
            case 'w':{
                int nextX = currentX - 1;
                if (map[nextX][currentY] == street) {
                    char temp = map[currentX][currentY];
                    map[currentX][currentY] = map[nextX][currentY];
                    map[nextX][currentY] = temp;
                    
                    currentX = nextX;
                }
                break;
            }
            case 's':{
                int nextX = currentX + 1;
                if (map[nextX][currentY] == street) {
                    char temp = map[currentX][currentY];
                    map[currentX][currentY] = map[nextX][currentY];
                    map[nextX][currentY] = temp;
                    
                    currentX = nextX;
                }
                break;
            }
            case 'a': {
                int nextY = currentY - 1;
                if (map[currentX][nextY] == street) {
                    char temp = map[currentX][currentY];
                    map[currentX][currentY] = map[currentX][nextY];
                    map[currentX][nextY] = temp;
                    
                    currentY = nextY;
                }
                break;
            }
            case 'd': {
                int nextY = currentY + 1;
                if (map[currentX][nextY] == street) {
                    char temp = map[currentX][currentY];
                    map[currentX][currentY] = map[currentX][nextY];
                    map[currentX][nextY] = temp;
                    
                    currentY = nextY;
                }
                break;
            }
                
            default:
                break;
        }
        
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 6; j++) {
                printf("%c", map[i][j]);
            }
            printf("\n");
        }
        
        if (currentX == 1 && currentY == 5) {
            printf("恭喜你过关啦。\n");
            break;
        }
    }
    
    return 0;
}















