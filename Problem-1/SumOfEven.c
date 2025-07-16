// WAP to find a sum of even number into 1D array.

#include <stdio.h>

int main() {
    int n, sum = 0;

    printf("Enter the size of array : ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter elements into array :\n");
    for(int i = 0; i < n; i++) {
        printf("arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }

    for(int i = 0; i < n; i++) {
        if(arr[i] % 2 == 0) {
            sum += arr[i];
        }
    }

    printf("The sum of even numbers : %d\n", sum);

    return 0;
}
