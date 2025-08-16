// WAP to find Max, Min, Average of n numbers, n should be taken from user  
// and all n value should be taken from user 
// (Note that you are not allowed to use an array for this) 

import java.util.*;

public class MinMaxAvg{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n : ");
        int n = sc.nextInt();

        System.out.println("Enter number 1 : ");
        int num = sc.nextInt();

        int max = num, min = num;
        double sum = num;

        for(int i = 2; i <= n; i++){
            System.out.println("Enter number "+ i + " : ");
            num = sc.nextInt();

            if(num > max){
                max = num;
            }

            if(num < min){
                min = num;
            }

            sum = sum + num;

        }

        System.out.println("Min : " + min);
        System.out.println("Max : " + max);
        System.out.println("Avg : " + (sum / n));

    }
}