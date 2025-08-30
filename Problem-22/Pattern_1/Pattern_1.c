//        1
//      A   B
//    2   3   4
//  C   D   E   F

#include<stdio.h>

void main(){

    int n = 1;
    char ch = 'A';
    
    for(int i = 1; i <= 4; i++){

        for(int j = 1; j <= 4 - i; j++){
            printf("  ");
        }

        for(int j = 1; j <= i; j++){
            if(i % 2 != 0){
                printf("%d   ", n++);
            } 
            else{
                printf("%c   ", ch++);
            }
        }

        printf("\n");
    }

}