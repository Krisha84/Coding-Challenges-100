// WAP to find a Factor of a given number 

// Iterative

#include<stdio.h>

int main(){
    int n;

    printf("Enter the number : ");
    scanf("%d", &n);

    for (int i = 1; i <= n; i++){
        if(n % i == 0){
            printf("%d ", i);
        }
    } 
    printf("\n");

    return 0;
}