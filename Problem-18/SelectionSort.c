// WAP to sort an Array using Selection sort.

#include<stdio.h>

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter elements into arr : ");
    for(int i = 0; i < n; i++){
        printf("arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }
    
    printf("Unsorted Array : ");
    for(int i = 0; i < n; i++){
        printf("%d  ", arr[i]);
    }

    for(int i = 0; i < n - 1; i++){
        int min_index = i;

        for(int j = i + 1; j < n; j++){
            if(arr[j] < arr[min_index]){
                min_index = j;
            }
        }

        if(min_index != i){
            int temp = arr[i];
            arr[i] = arr[min_index];
            arr[min_index] = temp;
        }
    }

    printf("\nSorted Array : ");
    for(int i = 0; i < n; i++){
        printf("%d  ", arr[i]);
    }
}