//        1
//      A   B
//    2   3   4
//  C   D   E   F

import java.util.*;

public class Pattern_1{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);
        
        int n = 1;
        char ch = 'A';
        
        for(int i = 1; i <= 4; i++){
            for(int j = 1; j <= 4 - i; j++){
                System.out.print("  ");
            }

            for(int j = 1; j <= i; j++){
                if(i % 2 != 0){
                    System.out.print(n++ + "   ");
                }
                else{ 
                    System.out.print(ch++ + "   ");
                }
            }

            System.out.println();
        }

    }
}