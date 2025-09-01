// WAP to delete an element from array specified by user. if element is not found print a 
// message “Element is not found” (do not take a new array). 

import java.util.*;

public class DeleteElement{
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter n : ");
        int n = sc.nextInt();

        int[] arr = new int[n];

        System.out.println("Enter elements into arr :");
        for(int i = 0; i < n; i++){
            System.out.println("arr["+i+"] : ");
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter an element to delete : ");
        int element = sc.nextInt();

        int i;

        for(i = 0; i < n; i++){
            if(arr[i] == element){
                break;
            }
        }

        if(i == n){
            System.out.println("Element is not found !!");
        } 
        else{
            for(int j = i; j < n - 1; j++){
                arr[j] = arr[j + 1];
            }
            n--; 

            System.out.println("Array after deletion : ");
            for(int j = 0; j < n; j++){
                System.out.print(arr[j] + " ");
            }
        }
    }
}