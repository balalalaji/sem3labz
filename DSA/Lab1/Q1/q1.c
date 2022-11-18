#include<stdio.h>
int sumofarray(int a[],int n);
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
    sumofarray(a,n);
    return 0;
}
 
int sumofarray(int a[],int n){
	int i,sum=0;      
	for(i=0;i<n;i++){
		sum+=a[i];
	}
	printf("the sum of the array is %d",sum);
}
