import java.util.*;
import java.io.*;
class Timer
{
int hr;
int min;
int sec;
public void input(int hr,int min, int sec)
{
this.hr = hr;
this.min = min;
this.sec = sec;
}
public void add(Timer obj1, Timer obj2)
{
Timer timee = new Timer();
timee.hr = obj1.hr+obj2.hr;
timee.min = obj1.min+obj2.min;
timee.sec = obj1.sec+obj2.sec;
if(timee.sec>=60)
{
timee.min = timee.min+1;
timee.sec = timee.sec-60;
}
if(timee.min>=60)
{
timee.hr = timee.hr+1;
timee.min = timee.min-60;
}
if(timee.hr>=24)
{
timee.hr = timee.hr-24;
}
display(timee);
}
public void subtract(Timer obj1,Timer obj2) 
{
Timer timee = new Timer();
timee.hr = (int) Math.abs(obj1.hr-obj2.hr);
timee.min = (int) Math.abs(obj1.min-obj2.min);
timee.sec = (int) Math.abs(obj1.sec-obj2.sec);
display(timee);
}
public void display(Timer timee)
{
System.out.println(timee.hr+":"+timee.min+":"+timee.sec);
}
}
class q2Time
{
public static void main(String[] args)
{
Timer obj1 = new Timer();
Timer obj2 = new Timer();
Timer timee = new Timer();
obj1.input(2,59,59);
obj2.input(3,5,6);
timee.add(obj1,obj2);
timee.subtract(obj1,obj2);
}
}
