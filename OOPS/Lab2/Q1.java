import java.util.*;
class Q1{
    public static void main (String Args[]){
        int arr[]={9,15,10,19};
        for (int i = 0; i < arr.length - 1; i++){
         for (int j = 0; j < arr.length - i - 1; j++){
            if (arr[j] > arr[j + 1]){    
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
        System.out.println("Ascending Order:");       
        for (int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }               
    for (int i = 0; i < arr.length - 1; i++){
         for (int j = 0; j < arr.length - i - 1; j++){
            if (arr[j] < arr[j + 1]){    
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    System.out.println("Descending Order:"); 
    for (int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }
}
