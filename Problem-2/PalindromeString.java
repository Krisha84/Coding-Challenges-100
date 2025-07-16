// WAP to find whether string is palindrome or not. 

import java.util.*;

public class PalindromeString{
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a string : ");
        String str = sc.next();

        String reverse = "";

        for(int i = str.length() - 1; i >= 0; i--)
            reverse += str.charAt(i);

        System.out.println(str.equals(reverse) ? "Palindrome !!" : "Not Palindrome !!");
    }
}