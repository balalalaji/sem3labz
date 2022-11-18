import java.util.*;
class three{
	public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		System.out.println("Enter values for nCr:");
		int n=scan.nextInt();
		int c=scan.nextInt();
		int r=scan.nextInt();		
		int ncr=fact(n)/(fact(r)+ fact(n-r));
	}
	static int fact(int x){
	if(x<2)
		return 1;
	else
		return(x*fact(x-1))
}
}