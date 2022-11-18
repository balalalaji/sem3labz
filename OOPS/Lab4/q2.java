import java.util.*;
class Time{
    Scanner sc = new Scanner(System.in);
    int hrs;
    int mins;
    int secs;
    Time()
    {
        System.out.println("i'm default consructor\n");
        System.out.println("Enter the value of Hour :-");
        hrs = sc.nextInt();

        System.out.println("Enter the value of MINUTES :-");
        mins = sc.nextInt();

        System.out.println("Enter the value of SECOND :-");
        secs = sc.nextInt();
        
        System.out.println("The time is "+hrs+":"+mins+":"+secs+"\n");

    }

    Time(int h , int m , int s)
    {
        System.out.println("i'm parameterized constructor\n");
        hrs = h;
        mins = m;
        secs = s;

        System.out.println("The time is "+hrs+":"+mins+":"+secs);

    }

    void display()
    {
        System.out.print("The time is ");
        System.out.println(hrs+":"+mins+":"+secs);
    }

    
}

public class q2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the vale of HOUR");
        int h = sc.nextInt();
        System.out.println("Enter the value  of MINUTES");
        int m = sc.nextInt();
        System.out.println("Enter the value  of second");
        int s = sc.nextInt();
        Time t1 = new Time();
        Time t2 = new Time(h , m, s);
        t1.display();
        t2.display();

    


    }
}
