#include <stdio.h>
void main() {
    int n;
    int ans = 0;
    printf("Enter any Number : ");
    scanf("%d" , &n);

    for (int i = 1; i <= n; i++) {
        ans += i;
    }

    printf("%d" , ans);
}