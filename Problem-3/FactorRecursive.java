// WAP to find a Factor of a given number 

// Recursive

import java.util.*;

public class FactorRecursive{

    public static void factor(int n, int i){
        if(i > n){
            return;
        }
        if(n % i == 0){
            System.out.print(i + " ");
        }
        factor(n, i + 1);
    }

    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number : ");
        int n = sc.nextInt();

        System.out.println("Factors of "+ n +" are :");
        factor(n, 1);

    }
}