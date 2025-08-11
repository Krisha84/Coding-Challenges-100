// WAP to find a summation of a digit of a given number

// Recursive

import java.util.*;

public class SumOfDigit_Recursive{

    public static int sumOfDigits(int n){
        if(n == 0){
            return 0;
        }

        return (n % 10) + sumOfDigits(n / 10);
    }

    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number : ");
        int n = sc.nextInt();

        System.out.println("Sum of digits : " + sumOfDigits(n));

    }
}