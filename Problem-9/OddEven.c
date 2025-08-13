// WAP to find whether a number is Odd or Even without using a % operator.

#include<stdio.h>

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    if((n / 2) * 2 == n){
        printf("%d is Even !!", n);
    }
    else{
        printf("%d is Odd !!", n);
    }
}