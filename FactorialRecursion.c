#include <stdio.h>
void main() {
    int n;
    printf("Enter a number to find factorial: ");
    scanf("%d",&n);
    int ans = factorial(n);
    printf("%d" , ans);
    

}

int factorial(int n) {
    if (n == 1) return 1;
    else return (n * factorial(n - 1));            
}