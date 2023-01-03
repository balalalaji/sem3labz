#include <stdio.h>
#include <string.h>
#define size 7
typedef struct
{
    char str[10];
} st;
typedef struct
{
    st s[size];
    int front, rear;
} queue;
int isFull(queue q)
{
    if ((q.front == q.rear + 1) || (q.front == 0 && q.rear == size - 1))
        return 1;
    return 0;
}
int isEmpty(queue q)
{
    if (q.front == -1)
        return 1;
    return 0;
}
void insertcq(queue *q, char string[10])
{
    if (isFull(*q))
    {
        printf("queue is full");
        return;
    }
    if (q->front == -1)
        q->front = 0;
    q->rear = (q->rear + 1) % size;
    strcpy((q->s[q->rear]).str, string);
}
void deletecq(queue *q)
{
    if (isEmpty(*q))
    {
        printf("queue is empty");
        return;
    }
    char string[10];
    strcpy(string, (q->s[q->front]).str);
    if (q->front == q->rear)
    {
        q->front = -1;
        q->rear = -1;
    }
    else
        q->front = (q->front + 1) % size;
    printf("deleted string: %s", string);
}
void displaycq(queue q)
{
    int i;
    if (isEmpty(q))
    {
        printf("empty queue");
        return;
    }
    for (i = q.front; i != q.rear; i = (i + 1) % size)
        printf("%s ", q.s[i].str);
    printf("%s", q.s[i].str);
}
int main()
{
    int inp;
    char temp[10];
    queue q;
    q.front = -1;
    q.rear = -1;
    printf("\n1. insert, 2. delete, 3. display, 4. exit");
    do
    {
        printf("\nenter choice. 
 if (inp == 1)
        {
            printf("enter string to insert ");
            scanf("%s", temp);
            insertcq(&q, temp);
        }
        else if (inp == 2)
            deletecq(&q);
        else if (inp == 3)
            displaycq(q);
        else
            inp = 4;
    } while (inp != 4);
    printf("bye bye");
}


#include <stdio.h>
#include <stdlib.h>

typedef struct
{
    int *items;
    int f1, r1, f2, r2, hSize;
} queue;
int isFull1(queue q)
{
    if ((q.f1 == q.r1 + 1) || (q.f1 == 0 && q.r1 == q.hSize - 1))
        return 1;
    return 0;
}
int isEmpty1(queue q)
{
    if (q.f1 == -1)
        return 1;
    return 0;
}
int isFull2(queue q)
{
    if ((q.f2 == q.r2 + 1) || (q.f2 == q.hSize && q.r2 == (q.hSize * 2) - 1))
        return 1;
    return 0;
}
int isEmpty2(queue q)
{
    if (q.f2 == q.hSize - 1)
        return 1;
    return 0;
}
void insertcq1(queue *q, int x)
{
    if (isFull1(*q))
    {
        printf("queue is full");
        return;
    }
    if (q->f1 == -1)
        q->f1 = 0;
    q->r1 = (q->r1 + 1) % q->hSize;
    q->items[q->r1] = x;
}
void insertcq2(queue *q, int x)
{
    if (isFull2(*q))
    {
        printf("queue is full");
        return;
    }
    if (q->f2 == q->hSize - 1)
        q->f2 = q->hSize;
    q->r2 = ((q->r2 + 1) % q->hSize) + q->hSize;
    q->items[q->r2] = x;
}
int deletecq1(queue *q)
{
    if (isEmpty1(*q))
    {
        printf("queue is empty");
        return -5;
    }
    int item = q->items[q->f1];
    if (q->f1 == q->r1)
    {
        q->f1 = -1;
        q->r1 = -1;
    }
    else
        q->f1 = (q->f1 + 1) % q->hSize;
    return item;
}
int deletecq2(queue *q)
{
    if (isEmpty2(*q))
    {
        printf("queue is empty");
        return -5;
    }
    int item = q->items[q->f2];
    if (q->f2 == q->r2)
    {
        q->f2 = q->hSize - 1;
        q->r2 = q->hSize - 1;
    }
    else
        q->f2 = ((q->f2 + 1) % q->hSize) + q->hSize;
    return item;
}
void displaycq(queue q)
{
    int i;
    printf("\nqueue 1: ");
    if (isEmpty1(q))
        printf("empty queue");
    else
    {
        for (i = q.f1; i != q.r1; i = (i + 1) % q.hSize)
            printf("%d ", q.items[i]);
        printf("%d", q.items[i]);
    }
    printf("\nqueue 2: ");
    if (isEmpty2(q))
        printf("empty queue");
    else
    {
        for (i = q.f2; i != q.r2; i = ((i + 1) % (q.hSize * 2)) + q.hSize)
            printf("%d ", q.items[i]);
        printf("%d", q.items[i]);
    }
}
int main()
{
    int temp, inp, n;
    queue q;
    printf("enter n ");
    scanf("%d", &n);
    q.items = (int *)malloc(n * sizeof(int));
    q.f1 = -1;
    q.r1 = -1;
    q.hSize = n / 2;
    q.f2 = q.hSize - 1;
    q.r2 = q.hSize - 1;
    printf("\n1. insert1\n2. insert2\n3. delete1\n4. delete2\n5. display\n6. exit");
    do
    {
        printf("\nenter choice. ");
        scanf("%d", &inp);
        if (inp == 1)
        {
            printf("enter number to insert ");
            scanf("%d", &temp);
            insertcq1(&q, temp);
        }
        else if (inp == 2)
        {
            printf("enter number to insert ");
            scanf("%d", &temp);
            insertcq2(&q, temp);
        }
        else if (inp == 3)
            printf("element deleted is: %d", deletecq1(&q));
        else if (inp == 4)
            printf("element deleted is: %d", deletecq2(&q));
        else if (inp == 5)
            displaycq(q);
        else
            inp = 6;
    } while (inp != 6);
}
