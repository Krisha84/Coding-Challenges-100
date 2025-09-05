// WAP to check weather number is present in array or not (using recursion only) and the 
// function’s syntax is given below 
// Int isInArray(int a[],int m);  
// Where int a[] is Array of integer and m is element to be searched.   

#include <stdio.h>

int n;      
int index = 0; 

int isInArray(int arr[], int m){
    if(index >= n){
        return 0; 
    }
    if(arr[index] == m){
        return 1; 
    }

    index++;
    
    return isInArray(arr, m);

}

void main(){

    printf("Enter n: ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter elements into arr : \n");
    for(int i = 0; i < n; i++){
        printf("arr[%d]: ", i);
        scanf("%d", &arr[i]);
    }

    int m;

    printf("Enter element to search : ");
    scanf("%d", &m);

    if(isInArray(arr, m)){
        printf("%d is present in array !!\n", m);
    } 
    else{
        printf("%d is not present in array !!\n", m);
    }

}