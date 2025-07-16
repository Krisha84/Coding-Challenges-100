// WAP to find a sum of even number into 1D array.

import java.util.*;

public class SumOfEven{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the size of array : ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        int sum = 0;

        System.out.println("Enter elements into array : ");
        for(int i = 0; i < n; i++){
            System.out.println("arr["+i+"] : ");
            arr[i] = sc.nextInt();
        }

        for(int i : arr){
            if(i % 2 == 0){
                sum += i;
            }
        }

        System.out.println("The sum of even numbers : "+ sum);
    }
}