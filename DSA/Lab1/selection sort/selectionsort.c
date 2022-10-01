#include <stdio.h>
#include "SelectionSort.h"
void main()
{
	int array [10];
	int i,j,n,temp;
	printf("Enter number of element in array:");
	scanf("%d",&n);
	printf("Insert ELements in to array:");
	for(i=0;i<n;i++)
	{
	scanf("%d",&array[i]);
	SelectionSort(array,n);
	}
	printf("Sorted array:");
	for(i=0;i<n;i++)
	{
	printf("%d\t", array[i]);
	}
}

