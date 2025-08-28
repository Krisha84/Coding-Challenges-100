// WAP to find a power a^b (without using power and multiplication operation). 

#include <stdio.h>

void main() {
    int a, b;
    printf("Enter base a : ");
    scanf("%d", &a);
    
    printf("Enter exponent b : ");
    scanf("%d", &b);

    int ans = 1;

    for(int i = 0; i < b; i++){
        int temp = 0;

        for(int j = 0; j < a; j++){  
            temp += ans;
        }
        ans = temp;
    }

    printf("%d ^ %d = %d\n", a, b, ans);

}