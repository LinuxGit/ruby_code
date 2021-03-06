#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP 20

int main() {
    int fahr;
    printf("Fahr to Celsius\n");
    for (fahr = UPPER; fahr >= 0; fahr -= STEP) {
        printf("%3d  %6.1f\n", fahr, (5.0 / 9.0) * (fahr - 32));
    }
    return 0;
}
