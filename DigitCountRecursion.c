#include <stdio.h>
int count(int n) {
    if (n == 1) return 1;
    else return 1 + count(n / 10);
       
    
} 

void main() {
    int n;
    printf("Enter a number : ");
    scanf("%d",&n);
    int ans = count(n);
    printf("%d" , ans);
}


