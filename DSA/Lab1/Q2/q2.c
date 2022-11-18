#include<stdio.h>
int multiplyarray(int n);
double (int a[],int b[]);
int main()
{
    int a[10],i,n;
    printf("Enter size of array: ");
    scanf("%d",&n);
 
    printf("Enter elements in array: ");
    for(i=0;i<n;i++)
    {
    	scanf("%d",&a[i]);
    }
    multiplyarray(a,n);
    return 0;

    int b[10],i,n;
    printf("Enter size of array: ");
    scanf("%d",&n);
 
    printf("Enter elements in array: ");
    for(i=0;i<n;i++)
    {
    	scanf("%d",&b[i]);
    }
    multiplyarray(b,n);
    return 0;
}
 
int mutliplyarray(int a[],int b[],int n){
	int i,pro=1;      
	for(i=0;i<n;i++){
		pro=a[i]*b[i];
	}
	printf("The product of two arrays are: %d",pro);
}
