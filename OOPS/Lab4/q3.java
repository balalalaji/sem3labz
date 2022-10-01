import java.util.*;
class BankAccount{
    String name;
    int acc_num;
    String type;
    int balance;
    static int roi=12;
    int depo;
    int withd;
Scanner sc=new Scanner(System.in);
void setValues(String name,int acc_num,String type,int balance){
    name=name;
    acc_num=acc_num;
    type=type;
    balance=balance;
    }
void Bal(){
    System.out.println("Enter Balance:");
    balance=sc.nextInt();
}
  void Deposit(){
    System.out.println("Enter ammount to Deposit:");
    depo=sc.nextInt();
    balance=balance+depo;
    System.out.println("New Balance:Rupees "+balance);
}
void Withdraw(){
    System.out.println("Enter ammount to Withdraw: ");
    withd=sc.nextInt();
    balance=balance-withd;
    if (balance<1000){
        System.out.println("Cant Withdraw,below Minimum Balance");
    }
    else{
    System.out.println("New Balance:Rupees"+balance);   
    }
}
void Display(){
    System.out.println("Name:"+name);  
    System.out.println("Account Number:"+acc_num);
    System.out.println("Type of Account:"+type);                                                     
    System.out.println("Balance:Rupees"+balance);
    }
void RateOfIntrest(){
    System.out.println("Rate of Intrest:"+roi+"%");    
}
}
class Account{
public static void main(String args[])
{
Scanner sc = new Scanner(System.in);
System.out.println("Enter Name of Account Holder : ");
String name = sc.nextLine();
System.out.println("Enter Account Number : ");
int acc_num = sc.nextInt();
System.out.println("Enter Type of Account : ");
String type = sc.nextLine();
BankAccount balaji=new BankAccount();
balaji.Bal();
balaji.Withdraw();                                                                                 
balaji.Deposit();
balaji.Display();
balaji.RateOfIntrest();
}
}
