#include <stdio.h>
int main()
{
    int score = 87;
    score /= 10;
    switch(score)
    {
        case 10:
        case 9:
            printf("Level A");
            break;
        case 8:
            printf("Level B");
            break;
        case 7:
        case 6:
            printf("Level C");
            break;
        default:
            printf("Level D");
            break;
    }
    return 0;
}
