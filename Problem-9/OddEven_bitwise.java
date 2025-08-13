// WAP to find whether a number is Odd or Even without using a % operator.

// Using bitwise AND

import java.util.*;

public class OddEven_bitwise{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n : ");
        int n = sc.nextInt();

        if((n & 1) == 0){
            System.out.println(n + " is Even !!");
        }
        else{
            System.out.println(n + " is Odd !!");
        }
    }
}