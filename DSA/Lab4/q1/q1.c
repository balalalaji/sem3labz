#include <stdio.h>
void Fibo(int n){
	static int num1=0,num2=1,num3;
		if(n>0){
			num3=num1+num2;
			num1=num2;
			num2=num3;
			printf("%d",num3);
			Fibo(n-1);
			}
	}                                                                                                                                                                             
int main(){
	int n;
	printf("Enter number of elements:");
	scanf("%d",&n);
	printf("%d%d",0,1);
	Fibo(n-2);
return 0;
}
