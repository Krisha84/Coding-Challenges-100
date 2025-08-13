// WAP to find a total odd and total even digit of a given number

import java.util.*;

public class OddEvenCount{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n : ");
        int n = sc.nextInt();

        int odd = 0;
        int even = 0;

        while(n > 0){
            int r = n % 10;

            if(r % 2 == 0){
                even++;
            }
            else{
                odd++;
            }

            n = n / 10;
        }

        System.out.println("Odd digits : " + odd);
        System.out.println("Even digits : " + even);

    }
}