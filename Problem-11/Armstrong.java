// WAP to find weather given number is Armstrong number is not. 

import java.util.*;

public class Armstrong{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter n: ");
        int n = sc.nextInt();

        int digit = 0;

        int temp = n;

        while(temp > 0){
            digit++;
            temp = temp / 10;
        }

        int result = 0;
        temp = n;
        while(temp > 0){
            int r = temp % 10;
            result = result + (int) Math.pow(r, digit); 
            temp = temp / 10;
        }
 
        if(result == n){
            System.out.println(n + " is an Armstrong number !");
        } 
        else{
            System.out.println(n + " is not an Armstrong number !");
        }
    }
}