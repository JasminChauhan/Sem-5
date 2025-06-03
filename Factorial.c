#include <stdio.h>
void main() {
    int n;
    printf("Enter a number to find factorial: ");
    scanf("%d",&n);
    int fact = 1;
    
    for (int i = 1; i <= n; i++) {
        fact *= i;
    }
    
    printf("%d",fact);
}