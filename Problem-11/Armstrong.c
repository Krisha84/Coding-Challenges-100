// WAP to find weather given number is Armstrong number is not.

#include<stdio.h>
#include<math.h>

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    int digit = 0;

    int temp = n;

    while(temp > 0){
        digit++;
        temp = temp / 10;
    }

    double result = 0;
    temp = n;
    
    while(temp > 0){
        int r = temp % 10;
        result = result + pow(r, digit); 
        temp = temp / 10;
    }
 
    if(result == n){
        printf("%d is an Armstrong number !", n);
    } 
    else{
        printf("%d is not an Armstrong number !", n);
    }
}