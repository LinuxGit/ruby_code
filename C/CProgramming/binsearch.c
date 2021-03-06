#include <stdio.h>

int binsearch(int x, int v[], int n) {
    int low = 0;
    int high = n -1;
    int mid;

    while (low <= high) {
        mid = (low + high) / 2;
        if (x < v[mid])
            high = mid -1;
        else if (x > v[mid])
            low = mid + 1;
        else
            return mid;
    }
    return -1;
}

int main() {
    int v[] = {1, 2, 5, 9, 12, 13};
    printf("%d\n", binsearch(5, v, 6));
}