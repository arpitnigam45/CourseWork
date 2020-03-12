#include<stdio.h>



int sumArray(int anArray[], int size)
{
    //base case
    if (size == 0)
    {
        return 0;
    }
    else if (size == 1)
    {
        return anArray[0];
    }

    //divide and conquer
    int mid = size / 2;
    int rsize = size - mid;
    int lsum = sumArray(anArray, mid);
    int rsum = sumArray(anArray + mid, rsize);
    return lsum + rsum;
}

int main()
{
	  int array[100], N, max, min;
    int i;

   
    printf("Enter size of the array: ");
    scanf("%d", &N);
    printf("Enter %d elements in array: ", N);
    for(i=0; i<N; i++)
    {
        scanf("%d", &array[i]);
    }
		int res = sumArray(array,N);
		printf("\nsum is %d\n",res);
}
