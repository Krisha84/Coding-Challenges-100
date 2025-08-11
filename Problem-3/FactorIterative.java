// WAP to find a Factor of a given number 

// Iterative
import java.util.*;

public class FactorIterative{
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number : ");
        int n = sc.nextInt();

        System.out.println("Factors--Iterative :");
        for(int i = 1; i <= n; i++) {
            if(n % i == 0) {
                System.out.print(i + " ");
            }
        }
    }
}