// WAP to find a power a^b (without using power and multiplication operation). 

import java.util.*;

public class Power{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter base a: ");
        int a = sc.nextInt();

        System.out.println("Enter b : ");
        int b = sc.nextInt();

        int ans = 1;

        for(int i = 0; i < b; i++){
            int temp = 0;

            for(int j = 0; j < a; j++){
                temp = temp + ans;
            }

            ans = temp;
        }

        System.out.println(a + " ^ " + b + " = " + ans);

    }
}