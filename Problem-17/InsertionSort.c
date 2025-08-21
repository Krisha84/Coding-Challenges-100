// WAP to sort an Array using insertion sort.

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

    for(int i = 0; i < n; i++){
        int key = arr[i];
        int j;

        for(j = i - 1; j >= 0 && arr[j] > key; j--){
            arr[j + 1] = arr[j];
        }
        arr[j + 1] = key;
    }

    printf("Sorted Array : ");
    for(int i = 0; i < n; i++){
        printf("%d  ", arr[i]);
    }
}