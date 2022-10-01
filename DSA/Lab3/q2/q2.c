#include<stdio.h>
#include<stdlib.h>
struct Student{
    int rollNo;
    char name[10];
    int cgpa;
};
int main(){
struct Student s1={01,"s1",90};
struct Student s2={02,"s2",90};
printf("S1:-Roll no: %d Name:%s CGPA:%d\n",s1.rollNo,s1.name,s1.cgpa);
printf("S2:-Roll no: %d Name:%s CGPA:%d\n",s2.rollNo,s2.name,s2.cgpa);
return 0;
}