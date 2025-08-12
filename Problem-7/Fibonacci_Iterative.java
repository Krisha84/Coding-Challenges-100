// WAP to find a Fibonacci series up to n terms

// Iterative

import java.util.*;

public class Fibonacci_Iterative{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number : ");
        int n = sc.nextInt();

        int a = 0;
        int b = 1;

        System.out.println("Fibonacci Series up to " + n + " terms :");

        for(int i = 1; i <= n; i++){
            System.out.print(a + " ");

            int c = a + b;
            a = b;
            b = c;
        }

    }
}