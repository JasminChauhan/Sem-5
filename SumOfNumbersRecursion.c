#include <stdio.h>

int sum(int n) {
    if (n == 0) return 0;
    else return n + sum(n - 1);
}

void main() {
    int n;
    printf("Enter any Number : ");
    scanf("%d" , &n);
    int ans = sum(n);
    printf("%d" , ans);
}