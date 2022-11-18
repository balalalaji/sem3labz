#include <stdio.h>
#define MAX 20
int stack[MAX];
int top=-1; 
int isEmpty()
{
	if (top==-1) return 1;
	return 0;
}
void push(int x)
{
	stack[++top] = x;
}
void pop()
{
	top--;
}
void display()
{
	for (int i=0; i<=top; i++)
	{
		printf("%d ", stack[i]);
}}
int solve(int arr[MAX], int n, int k)
{	
	push(arr[0]);
	int count=0;
	for (int i=1; i<n; i++) 
	{
        while (!isEmpty() && stack[top] < arr[i] && count < k) 
        {                                    
            pop();
            count++;
        }
        push(arr[i]);
	}
	display();
}
int main()
{
	int a[MAX], n, k;
	printf("Enter length of array : ");
	scanf("%d", &n);
	printf("Enter k elements to be deleted : ");
	scanf("%d", &k);
    printf("Enter array elements : ");
	for (int i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	solve(a, n, k);
}

