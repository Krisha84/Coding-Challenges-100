// WAP to sort an Array using Selection sort.

import java.util.*;

public class SelectionSort{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n : ");
        int n = sc.nextInt();

        int[] arr = new int[n];

        System.out.println("Enter elements into arr : ");
        for(int i = 0; i < n; i++){
            System.out.print("arr["+i+"] : ");
            arr[i] = sc.nextInt();
        }

        System.out.println("\nUnorted Array : ");
        for(int i = 0; i < n; i++){
            System.out.print(arr[i] + "  ");
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

        System.out.println("\nSorted Array : ");
        for(int i = 0; i < n; i++){
            System.out.print(arr[i] + "  ");
        }

    }
}