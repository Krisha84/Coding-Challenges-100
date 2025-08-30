// *********
// **** ****
// ***   ***
// **     **
// *       *

import java.util.*;

public class Pattern_3{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        for(int i = 5; i >= 1; i--){
            for(int j = 1; j <= i; j++){
                System.out.print("*");
            }

            for(int j = 1; j <= 2*(5 - i); j++){
                System.out.print(" ");
            }

            for(int j = 1; j <= i; j++){
                System.out.print("*");
            }

            System.out.println();
        }

    }
}