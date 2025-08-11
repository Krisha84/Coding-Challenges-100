// WAP to find a factorial of a given integer

// Iterative

import java.util.*;

public class Factorial_Iterative{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number : ");
        int n = sc.nextInt();

        int fact = 1;

        for(int i = 1; i <= n; i++){
            fact = fact * i;
        }

        System.out.println(fact);

    }
}