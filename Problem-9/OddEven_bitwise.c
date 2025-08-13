// WAP to find whether a number is Odd or Even without using a % operator.

// Using bitwise AND

#include<stdio.h>

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    if((n & 1) == 0){
        printf("%d is Even !!", n);
    } 
    else{
        printf("%d is Odd !!", n);
    }
}