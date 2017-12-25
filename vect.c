#include <stdio.h>
#include <stdlib.h>

void BrushEvOdd(int length, double *x, double *ev, double *odd);

double x[32];
double ev[16];
double odd[16];

int main()
{	
    int length = 32;
    double test[16];
    int i;
    for (i = 0; i < length; i++){
        x[i] = rand()%10 +1;    
    }
    int j = 0;
    BrushEvOdd(length,x, ev, odd);
    for (i = 0; i < length; i++){
        if (i%2 == 0){
            test[j] = x[i];
            j++;
        }
}   
    for (i = 0; i < 16; i++) {
        if (test[i] == ev[i]){
        printf("TRUE"); 
   }
}
    return 0;
}
