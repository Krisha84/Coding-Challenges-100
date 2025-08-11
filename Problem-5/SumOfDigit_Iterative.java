// WAP to find a summation of a digit of a given number

// Iterative

import java.util.*;

public class SumOfDigit_Iterative{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number : ");
        int n = sc.nextInt();

        int sum = 0;

        while(n > 0){
            int r = n % 10;
            sum = sum + r;
            n = n / 10;
        }

        System.out.println("Sum of digits : " + sum);

    }
}