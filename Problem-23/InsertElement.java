// WAP to enter an element at specific position into array. (Do not take a new array)

import java.util.Scanner;

public class InsertElement{
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter n : ");
        int n = sc.nextInt();

        int[] arr = new int[n + 1];

        System.out.println("Enter elements into arr : ");
        for(int i = 0; i < n; i++){
            System.out.println("arr["+i+"] : ");
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter the element : ");
        int element = sc.nextInt();

        System.out.print("Enter the position : ");
        int position = sc.nextInt();

        if(position < 1 || position > n + 1){
            System.out.println("Oops...can't insert an element...Plss Enter valid position !!");
        }

        else{  
            for(int i = n; i >= position; i--){
                arr[i] = arr[i - 1];
            }
    
            arr[position - 1] = element;
            n++;

            System.out.println("Array after insertion :");

            for(int i = 0; i < n; i++){
                System.out.print(arr[i] + " ");
            }
        }
    }
}