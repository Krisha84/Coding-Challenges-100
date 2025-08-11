// WAP to find a summation of a digit of a given number

// Recursive

#include <stdio.h>

int sumOfDigits(int n){
    if (n == 0){ 
        return 0;
    }
    return (n % 10) + sumOfDigits(n / 10);
}

int main(){
    int n;

    printf("Enter the number : ");
    scanf("%d", &n);

    printf("Sum of digits : %d\n", sumOfDigits(n));

    return 0;
}