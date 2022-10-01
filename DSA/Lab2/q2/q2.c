#include <stdio.h>
void printArr(int *arr, int size);
int main()
{
    int arr[100];
    int size;
    int *left = arr;
    int *right;
    printf("Enter size of array: ");
    scanf("%d", &size);
    right = &arr[size - 1];
    printf("Enter elements in array: ");
    while(left <= right){
    scanf("%d", left++);
    }
void printArr(int * arr, int size){
    int * arrEnd = (arr + size - 1);
    while(arr <= arrEnd){ 
       printf("%d, ", *arr);
       arr++;
}
printf("%s",arr[i]);
return 0;
}
