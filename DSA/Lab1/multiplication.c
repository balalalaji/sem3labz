#include<stdio.h>
#include <stdlib.h>

void read(int a[][100],int b[][100],int m,int n,int p, int q){
        int i,j;
        printf("Enter elements of the first matrix: ");
             for(i=0;i<m;i++){
                for(j=0;j<n;j++){
                    scanf("%d",&a[i][j]);
                }
             }  
        printf("Enter elements of the second matrix: ");                
             for(i=0;i<p;i++){
                for(j=0;j<q;j++){
                    scanf("%d",&b[i][j]);
                }
             }      
     }
void display(int a[][100],int b[][100],int m,int n,int p,int q){
         int i,j;
         printf("the first matrix is \n");
             for(i=0;i<m;i++){
                for(j=0;j<n;j++){
                    printf("%d\t",a[i][j]);
                }
                printf("\n");
             } 
             printf("\n");  
        printf("the second matrix is \n");
             for(i=0;i<p;i++){
                for(j=0;j<q;j++){
                    printf("%d\t",b[i][j]);
                }
                printf("\n");
             }
                 
     
}
void multiplication(int a[][100],int b[][100],int c[][100],int m,int n,int p,int q){
     int k,i,j;
     for(i=0;i<m;i++){
        for(j=0;j<q;j++){
           c[i][j]=0;           
            for(k=0;k<n;k++){
                c[i][j] = c[i][j]+(a[i][k]*b[k][j]);
            }}}
            printf("the prouct of the matrix is:\n ");
            for(i=0;i<m;i++){
                for(j=0;j<q;j++){
                    printf("%d\t",c[i][j]);
                }
                printf("\n");
             } 
}

int main(){
 int m,n,p,q,a[100][100],b[100][100],c[100][100];
     printf("Enter the order of the first matrix: ");
     scanf("%d %d",&m,&n);
     printf("Enter the order of the second matrix: ");
     scanf("%d %d",&p,&q);
     if(n!=p){
        printf("not multiplicable");
        exit(0);}
     read(a,b,m,n,p,q);
     display(a,b,m,n,p,q);
     multiplication(a,b,c,m,n,p,q);}

