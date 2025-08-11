// WAP to find a factorial of a given integer

// Recursive

#include<stdio.h>

int fact(int n){
    if(n == 0 || n == 1){
        return 1;
    }

    return n * fact(n - 1);
}

void main(){
    int n;

    printf("Enter the number : ");
    scanf("%d ", &n);

    printf("%d ", fact(n));
}