// WAP to sort an Array using Bubble sort. 
#include <stdio.h>

void main() {
    int n;
    
    printf("Enter n : ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter values into arr : ");
    for(int i = 0; i < n; i++){
        printf("arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }

    printf("Unorted Array :\n");

    for(int i = 0; i < n; i++){
        printf("%d ", arr[i]);
    }

    for(int i = 0; i < n - 1; i++){
        for(int j = 0; j < n - i - 1; j++){
            if(arr[j] > arr[j + 1]){
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    printf("\nSorted Array :\n");

    for(int i = 0; i < n; i++){
        printf("%d ", arr[i]);
    }

}