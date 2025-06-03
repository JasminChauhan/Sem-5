#include <stdio.h>

void main() {
    int x;
    int y;
    scanf("%d" , &x);
    scanf("%d" , &y);
    int ans = 1;

    for (int i = 1; i <= y; i++) {
        ans *= x;    
    }
    printf("%d" , ans);
}