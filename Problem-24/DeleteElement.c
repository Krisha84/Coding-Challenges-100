// WAP to delete an element from array specified by user. if element is not found print a 
// message “Element is not found” (do not take a new array).

#include <stdio.h>

void main() {
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter elements into arr :\n");
    for(int i = 0; i < n; i++){
        printf("arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }

    int element;

    printf("Enter an element to delete : ");
    scanf("%d", &element);

    int i, found = 0;

    for(i = 0; i < n; i++){
        if(arr[i] == element){
            found = 1;
            break;
        }
    }

    if(!found){
        printf("Element is not found !!\n");
    }
    else{
        for(int j = i; j < n - 1; j++){
            arr[j] = arr[j + 1];
        }

        n--;

        printf("\nArray after deletion : ");
        for(int j = 0; j < n; j++){
            printf("%d  ", arr[j]);
        }
        printf("\n");
    }
}