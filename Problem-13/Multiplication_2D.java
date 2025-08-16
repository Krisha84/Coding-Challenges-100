// WAP to find a Multiplication of 2 Matrix.

import java.util.*;

public class Multiplication_2D{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter rows of first matrix : ");
        int r1 = sc.nextInt();
        System.out.println("Enter columns of first matrix : ");
        int c1 = sc.nextInt();

        System.out.println("Enter rows of second matrix : ");
        int r2 = sc.nextInt();
        System.out.println("Enter columns of second matrix : ");
        int c2 = sc.nextInt();

        if (c1 != r2) {
            System.out.println("Matrix multiplication not possible !!");
            return;
        }

        int[][] arr1 = new int[r1][c1];
        int[][] arr2 = new int[r2][c2];
        int[][] ans = new int[r1][c2];

        System.out.println("Enter elements into arr1 : ");
        for(int i = 0; i < r1; i++){
            for(int j = 0; j < c1; j++){
                System.out.println("arr["+i+"]["+j+"] : ");
                arr1[i][j] = sc.nextInt();
            }
        }

        System.out.println("Enter elements into arr2 : ");
        for(int i = 0; i < r2; i++){
            for(int j = 0; j < c2; j++){
                System.out.println("arr["+i+"]["+j+"] : ");
                arr2[i][j] = sc.nextInt();
            }
        }

        for(int i = 0; i < r1; i++){
            for(int j = 0; j < c2; j++){
                ans[i][j] = 0;

                for(int k = 0; k < c1; k++){
                    ans[i][j] += arr1[i][k] * arr2[k][j];
                }
            }
        }

        System.out.println("Matrix 1 : ");
        for(int i = 0; i < r1; i++){
            for(int j = 0; j < c1; j++){
                System.out.print(ans[i][j] + " ");
            }
            System.out.println();
        }

        System.out.println("Matrix 2 : ");
        for(int i = 0; i < r2; i++){
            for(int j = 0; j < c2; j++){
                System.out.print(arr2[i][j] + " ");
            }
            System.out.println();
        }

        System.out.println("Multiplication Of Matrix : ");
        for(int i = 0; i < r1; i++){
            for(int j = 0; j < c2; j++){
                System.out.print(ans[i][j] + " ");
            }
            System.out.println();
        }

    }
}