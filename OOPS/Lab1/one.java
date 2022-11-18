import java.util.Scanner;
class one{
	public static void main(String[] args) {
		System.out.println("Hello World");
		Scanner scan=new Scanner(System.in);
		int a=scan.nextInt();
		int b=scan.nextInt();
		int c=scan.nextInt();	
		if (a>b && a>c){
			System.out.println("THE LARGEST NUMBER IS " + a);
		}
		else if (b>c && b>a){
			System.out.println("THE LARGEST NUMBER IS " + b);
		}
		else {
			System.out.println("THE LARGEST NUMBER IS " + c);
		}
	}
}