// WAP to find a prime number between range.

import java.util.*;

public class PrimeNumber_InRange{

    public static boolean isPrime(int n){
        if(n <= 1){
            return false;
        }

        for(int i = 2; i * i <= n; i++){
            if(n % i == 0){
                return false;
            }
        }

        return true;
    }

    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the start : ");
        int s = sc.nextInt();

        System.out.println("Enter the end : ");
        int e = sc.nextInt();

        for(int i = s; i <= e; i++){
            if(isPrime(i)){
                System.out.print(i + " ");
            }
        }

    }
}