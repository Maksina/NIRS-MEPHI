#include <stdio.h>
#include <stdlib.h>

int fact(int a);

int fact_test(int n) {
	if (n == 0 || n == 1) return 1;
	return (n*fact_test(n-1));
}
int main()
{	
	int a,i;
	int res;
	int test;
	for (i = 0; i < 5; i++)
	{	
		a = rand()%10 + 1;
		res = fact(a);
		test = fact_test(a);
		if (res == test) 
			printf("True");
		else 
			printf("False");
	}
	return 0;
}
