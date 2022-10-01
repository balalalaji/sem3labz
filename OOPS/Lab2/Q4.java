import java.util.Scanner;
public class Q4{
	public static void main(String args[]){
         Scanner scanner = new Scanner(System.in); 
         System.out.println("Enter the order of the 1st matrix: ");
		 int m = scanner.nextInt();
         int n = scanner.nextInt();
         System.out.println("Enter the order of the 2nd matrix: ");
		 int p = scanner.nextInt();
         int q = scanner.nextInt();
         int m1[][] = new int[m][n];
         int m2[][] = new int[p][q];
         int m3[][] = new int[m][n];
         if(m==p && n==q){
         	int i,j;
         	System.out.println("Enter elements of the 1st Matrix: ");
            for(i=0;i<m;i++){
            	for(j=0;j<n;j++){
            		m1[i][j] = scanner.nextInt();
            	}
            }
            System.out.println("Enter elements of the 2nd Matrix: ");
            for(i=0;i<p;i++){
            	for(j=0;j<q;j++){
            		m2[i][j] = scanner.nextInt();
            	}
            }            
            for(i=0;i<m;i++){
            	for(j=0;j<n;j++){
            		m3[i][j] = m1[i][j] + m2[i][j];
            	}
            }
            System.out.println("The sum is: ");
            for(i=0;i<m;i++){
            	for(j=0;j<n;j++){
            		System.out.print(m3[i][j] + "\t");
            	}
            	System.out.print("\n");
            }

         }
	}
}
