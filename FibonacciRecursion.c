#include <stdio.h> 
void fibonacci(int n , int a , int b){
    if(n == 0) return;
    else {
        printf("%d " ,a);
        fibonacci(n - 1, a + b , a);
    }
}

void main() {
    int n;
    scanf("%d" , n);
    fibonacci(n ,0 ,1);
}