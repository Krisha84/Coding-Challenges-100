// WAP to check weather number is present in array or not (using recursion only) and the 
// function’s syntax is given below 
// Int isInArray(int a[],int m);  
// Where int a[] is Array of integer and m is element to be searched.   

import java.util.*;

public class Problem_25{
    static int n;
    static int index = 0;

    public static boolean isInArray(int[] arr, int m){
        if(index >= n){
            return false;
        }
        if(arr[index] == m){
            return true;
        }
        
        index++;

        return isInArray(arr, m);
    }

    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n : ");
        n =sc.nextInt();

        int[] arr = new int[n];

        System.out.println("Enter elements into arr : ");
        for(int i = 0; i < n; i++){
            System.out.println("arr["+i+"] : ");
            arr[i] = sc.nextInt();
        }

        System.out.println("Enter element to search : ");
        int m = sc.nextInt();

        if(isInArray(arr, m)){
            System.out.println(m + "is present in array !!");
        }
        else{
            System.out.println(m + "is not present in array !!");
        }

    }
}