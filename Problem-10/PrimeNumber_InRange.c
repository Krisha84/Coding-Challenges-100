// WAP to find a prime number between range.

#include<stdio.h>
#include<stdbool.h>

bool isPrime(int n){
    if(n <= 1){
        return false;
    }

    for(int i = 2; i * i <= n; i++){
        if(n % i == 0){
            return false;
        }
    }

    return true;
}

void main(){
    int s, e;

    printf("Enter start : ");
    scanf("%d", &s);

    printf("Enter end : ");
    scanf("%d", &e);

    for(int i = s; i <= e; i++){
        if(isPrime(i)){
            printf("%d ", i);
        }
    }
}