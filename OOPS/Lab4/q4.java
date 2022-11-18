class Counter{
    static int count=0;
    Counter(){
        count++;
    }
static void showCount(){
    System.out.println("No. of objects presnet are:");
}
}
class q4{
    public static void main(String[]Args){
        Counter c1=new Counter();
        Counter c2=new Counter();
        Counter c3=new Counter();
        Counter.showCount();
        Counter c4=new Counter();
        Counter.showCount();
    }
}