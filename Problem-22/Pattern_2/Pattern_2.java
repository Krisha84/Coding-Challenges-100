// *********
//  *******
//   *****
//    ***
//     *

import java.util.*;

public class Pattern_2{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        for(int i = 5; i >= 1; i--){
            for(int j = 1; j <= 5 - i; j++){
                System.out.print(" ");
            }

            for(int j = 1; j <= 2*i - 1; j++){
                System.out.print("*");
            }

            System.out.println();
        }

    }
}