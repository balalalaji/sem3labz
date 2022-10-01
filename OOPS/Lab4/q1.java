import java.util.*;
class Complex {
    int x;
    int y;
    Scanner sc = new Scanner(System.in);

    Complex() {
        System.out.println("Enter a real no.");
        x = sc.nextInt();
        System.out.println("Enter a imag no.");
        y = sc.nextInt();
        System.out.println("This is default constructor");
        System.out.println("The real no. is " + x + " and imag NO. is " + y);
    }

    Complex(int real, int img) {
        x = real;
        y = img;
        System.out.println("This is parameterized Constructor");
    System.out.println("The real no. is " + real + " and imag NO. is " + img);


    }

    void display()
    {
        System.out.print("The complex no is:-  ");
        System.out.println(x+"+ i"+y);

    }

}

public class q1 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a real no.");
        int rel = sc.nextInt();
        System.out.println("Enter a imag no.");
        int img = sc.nextInt();
        Complex c1 = new Complex();
        Complex c2 = new Complex(rel , img);
         c1.display();
         c2.display();
    }

}