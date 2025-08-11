// WAP to find a summation of a digit of a given number

// Iterative

#include<stdio.h>

void main(){
    int n;

    printf("Enter the number : ");
    scanf("%d", &n);

    int sum = 0;

    while(n > 0){
        int r = n % 10;
        sum = sum + r;
        n = n / 10;
    }
    
    printf("%d ", sum);

}