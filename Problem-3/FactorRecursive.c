// WAP to find a Factor of a given number 

// Recursive

#include<stdio.h>

void factor(int n, int i){
    if (i > n){
        return; 
    }
    if (n % i == 0){
        printf("%d ", i);
    }
    factor(n, i + 1); 
}

int main(){
    int n;

    printf("Enter the number : ");
    scanf("%d ", &n);

    printf("Factors of %d are : ", n);
    factor(n, 1);
    printf("\n");

    return 0;
}