// WAP to sort an Array using Bucket sort.  

#include <stdio.h>

void insertionSort(int arr[], int n){
    for(int i = 1; i < n; i++){
        int key = arr[i];
        int j = i - 1;

        while(j >= 0 && arr[j] > key){
            arr[j + 1] = arr[j];
            j--;
        }

        arr[j + 1] = key;
    }
}

void main(){
    int n;

    printf("Enter n : ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter elements into arr : \n");
    for(int i = 0; i < n; i++){
        printf("arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }

    printf("\nUnsorted Array : ");
    for(int i = 0; i < n; i++){
        printf("%d  ", arr[i]);
    }

    int max = arr[0];
    for(int i = 1; i < n; i++){
        if(arr[i] > max){
            max = arr[i];
        }
    }

    int buckets[n][n];
    int bucketCount[n];

    for(int i = 0; i < n; i++){
        bucketCount[i] = 0;
    }

    for(int i = 0; i < n; i++){
        int index = (arr[i] * n) / (max + 1);
        buckets[index][bucketCount[index]++] = arr[i];
    }

    for(int i = 0; i < n; i++){
        if(bucketCount[i] > 0){
            insertionSort(buckets[i], bucketCount[i]);
        }
    }

    int k = 0;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < bucketCount[i]; j++){
            arr[k++] = buckets[i][j];
        }
    }

    printf("\nSorted Array : ");
    for(int i = 0; i < n; i++){
        printf("%d  ", arr[i]);
    }

}
