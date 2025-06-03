#include <stdio.h>

void main() {
    int a = 0;
    int b = 1;
    int n;
    int sum = 0;
    scanf("%d" , &n);

    for (int i = 0; i <= n; i++) {
       printf("%d %d" , a , b);
       sum = a + b;
       b = sum;
    }

}