// WAP to enter an element at specific position into array. (Do not take a new array)

#include<stdio.h>

void main(){
    int n;
    printf("Enter n : ");
    scanf("%d", &n);

    int arr[n + 1];

    printf("Enter elements into arr : \n");
    for(int i = 0; i < n; i++){
        printf("arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }

    int element;
    printf("Enter the element : ");
    scanf("%d", &element);

    int position;
    printf("Enter the position : ");
    scanf("%d", &position);

    if(position < 1 || position > n + 1){
        printf("Oops...can't insert an element...Plss Enter valid position !!");
    }
    else{
        for(int i = n; i >= position; i--){
            arr[i] = arr[i - 1];
        }

        arr[position - 1] = element;
        n++;

        printf("Array after insertion : ");

        for(int i = 0; i < n; i++){
            printf("%d ", arr[i]);
        }
    }
}