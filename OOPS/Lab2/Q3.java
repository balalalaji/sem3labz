import java.util.Scanner;
public class Q3{
	public static void main(String args[]){
		Scanner scanner = new Scanner(System.in);  
	    int i,ele,found=0,pos=0;
        System.out.println("Enter the number of elements in array: ");
		int n = scanner.nextInt();
		int arr1[] = new int[n];     
        System.out.println("Enter the numbers: ");
		for(i=0;i<n;i++)
			arr1[i] = scanner.nextInt();
		System.out.println("Enter number to be found: ");
		    ele = scanner.nextInt();
		for(i=0;i<n;i++){
			if(arr1[i]==ele){
            found=1;
            pos=i+1;
			break;	}
		}    
        if(found==1)
        System.out.println("Element found at " + pos + " postion");
        else
        System.out.print("element not found");
        



	}
}
