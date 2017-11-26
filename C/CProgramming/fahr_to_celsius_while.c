#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP 20

float celisius(float fahr);

int main() {
    float fahr, celsius;

    fahr = LOWER;
    printf("Fahr to Celsius\n");
    while (fahr <= UPPER) {
        printf("%3.0f  %6.1f\n", fahr, celisius(fahr));
        fahr += STEP;
    }
    return 0;
}

float celisius(float fahr) {
    return (5.0 / 9.0) * (fahr - 32.0);
}