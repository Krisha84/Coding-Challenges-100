// WAP to find a total odd and total even digit of a given number

#include<stdio.h>

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    int odd = 0, even = 0;
    int r;

    while (n > 0){
        r = n % 10;

        if(r % 2 == 0){
            even++;
        }
        else{
            odd++;
        }

        n = n / 10;
    }
    
    printf("Odd digits : %d\n", odd);
    printf("Even digits : %d", even);

}