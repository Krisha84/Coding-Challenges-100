// WAP to find a Fibonacci series up to n terms

// Iterative

#include<stdio.h>

void main(){
    int n;

    printf("Enter the number : ");
    scanf("%d", &n);

    int a = 0, b = 1;
    int c;

    printf("Fibonacci Series up to %d terms :", n);

    for(int i = 1; i <= n; i++){
        printf("%d ", a);

        int c = a + b;
        a = b;
        b = c;
    }
}