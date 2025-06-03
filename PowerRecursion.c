#include <stdio.h>

int power(x , y) {
    if (y == 0) return 1;
    else return x * power(x , y - 1); 
}

void main() {
    int x;
    int y;
    scanf("%d" , &x);
    scanf("%d" , &y);
    int ans = power(x , y);
    printf("%d" , ans);
}