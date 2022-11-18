#include<stdio.h>
#include "maths1.h"
void main()
{
    int x, y;
    printf("ENter X and Y: ");
    scanf("%d %d", &x, &y);
    int z = add(x, y);
    printf(" %d\n", z);
    z = sub(x, y);
    printf(" %d\n", z);
}
