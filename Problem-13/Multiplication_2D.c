// WAP to find the Multiplication of 2 Matrices
#include <stdio.h>

int main() {
    int r1, c1, r2, c2;

    printf("Enter rows of matrix 1 : ");
    scanf("%d", &r1);
    printf("Enter columns of matrix 1 : ");
    scanf("%d", &c1);

    printf("Enter rows of matrix 2 : ");
    scanf("%d", &r2);
    printf("Enter columns of matrix 2 : ");
    scanf("%d", &c2);

    if (c1 != r2) {
        printf("Matrix multiplication not possible !!\n");
        return 0;
    }

    int arr1[r1][c1], arr2[r2][c2], ans[r1][c2];

    printf("Enter elements into arr1 :\n");
    for (int i = 0; i < r1; i++) {
        for (int j = 0; j < c1; j++) {
            printf("arr1[%d][%d] : ", i, j);
            scanf("%d", &arr1[i][j]);
        }
    }

    printf("Enter elements into arr2 :\n");
    for (int i = 0; i < r2; i++) {
        for (int j = 0; j < c2; j++) {
            printf("arr2[%d][%d] : ", i, j);
            scanf("%d", &arr2[i][j]);
        }
    }

    for (int i = 0; i < r1; i++) {
        for (int j = 0; j < c2; j++) {
            ans[i][j] = 0;
            for (int k = 0; k < c1; k++) {
                ans[i][j] += arr1[i][k] * arr2[k][j];
            }
        }
    }

    printf("\nMatrix 1 :\n");
    for (int i = 0; i < r1; i++) {
        for (int j = 0; j < c1; j++) {
            printf("%d ", arr1[i][j]);
        }
        printf("\n");
    }

    printf("\nMatrix 2 :\n");
    for (int i = 0; i < r2; i++) {
        for (int j = 0; j < c2; j++) {
            printf("%d ", arr2[i][j]);
        }
        printf("\n");
    }

    printf("\nMultiplication Of Matrix :\n");
    for (int i = 0; i < r1; i++) {
        for (int j = 0; j < c2; j++) {
            printf("%d ", ans[i][j]);
        }
        printf("\n");
    }

    return 0;
}