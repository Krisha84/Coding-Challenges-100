// WAP to find Max, Min, Average of n numbers, n should be taken from user  
// and all n value should be taken from user 
// (Note that you are not allowed to use an array for this) 

#include<stdio.h>

int main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Invalid input !!");
        return 0;
    }

    int num;
    
    printf("Enter number 1 : ");
    scanf("%d", &num);

    int max = num, min = num;
    double sum = num;

    for(int i = 2; i <= n; i++){
        printf("Enter number %d : ", i);
        scanf("%d", &num);

        if(num > max){
            max = num;
        }

        if(num < min){
            min = num;
        }

        sum = sum + num;

    }

    printf("Min : %d\n", min);
    printf("Max : %d\n", max);
    printf("Avg : %f\n", (sum / n));

    return 0;

}