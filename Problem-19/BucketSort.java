// WAP to sort an Array using Bucket sort.  

import java.util.*;

public class BucketSort{
    public static void main(String [] args){

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter n : ");
        int n = sc.nextInt();

        int[] arr = new int[n];

        System.out.println("Enter elements into arr : ");
        for(int i = 0; i < n; i++){
            System.out.println("arr["+i+"] : ");
            arr[i] = sc.nextInt();
        }

        System.out.println("\nUnsorted Array : ");
        for(int i = 0; i < n; i++){
            System.out.print(arr[i] + "  ");
        }

        int max = arr[0];

        for(int i = 1; i < n; i++){
            if(arr[i] > max){
                max = arr[i];
            }
        }

        List<List<Integer>> buckets = new ArrayList<>();
        
        for(int i = 0; i < n; i++){
            buckets.add(new ArrayList<>());
        }

        for(int i = 0; i < n; i++){
            int index = (arr[i] * n) / (max + 1);
            buckets.get(index).add(arr[i]);
        }

        for(int i = 0; i < n; i++){
            Collections.sort(buckets.get(i));
        }

        int k = 0;

        for(int i = 0; i < n; i++){
            for(int num : buckets.get(i)){
                arr[k++] = num;
            }
        }

        System.out.println("\nSorted Array : ");
        for(int i = 0; i < n; i++){
            System.out.print(arr[i] + "  ");
        }

    }
}