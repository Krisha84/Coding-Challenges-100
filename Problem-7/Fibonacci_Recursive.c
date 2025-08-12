// WAP to find a Fibonacci series up to n terms

// Recursive

#include<stdio.h>

int fibonacci(int n){
    if(n <= 1){
        return n;
    }

    return fibonacci(n - 1) + fibonacci(n - 2);
}

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    for(int i = 0; i < n; i++){
        printf("%d ", fibonacci(i));
    }
}