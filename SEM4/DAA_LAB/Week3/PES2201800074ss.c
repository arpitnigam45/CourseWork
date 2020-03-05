#include <stdio.h>

int isSorted(int *a, int n){
    int i;
    for (i = 0; i < n-1; i++){
        if (a[i] > a[i+1]){
            return 0;
        }
    }
    return 1;
}

void bubblePass(int *a, int n){
    int i, temp;
    for (i = 0; i < n-1; i++){
        if (a[i] > a[i+1]){
            temp = a[i];
            a[i] = a[i+1];
            a[i+1] = temp;
        }
    }
}

void bubbleSort(int *a, int n){
    int i;
    for (i = 0; i < n; i++){
        if (isSorted(a, n)){
            return;
        }
        bubblePass(a, n);
    }
}

int numBubblePasses(int *a, int n){
    int i, count=0;
    for (i = 0; i < n; i++){
        if (isSorted(a, n)){
            return count;
        }
        bubblePass(a, n);
        count++;
    }
}

int maxIndex(int *a, int n){
    int i, max = 0;
    for (i = 0; i < n; i++){
        if (a[i] >= a[max]){
            max = i;
        }
    }
    return max;
}

void swapWithMax(int *a, int n){
    int max = maxIndex(a, n);
    int temp;
    if (max != n-1){
        temp = a[max];
        a[max] = a[n-1];
        a[n-1] = temp;
    }
}

void selectionSort(int *a, int n){
    int i;
    for (i = 0; i < n; i++){
        swapWithMax(a, n-i);
    }
}

int numSwaps(int *a, int n){
    int i, count = 0;
    for (i = n; i >= 0; i--){
        if (isSorted(a, i)){
            return count;
        }
        int max = maxIndex(a, i);
        int temp;
        if (max != i-1){
            temp = a[max];
            a[max] = a[i-1];
            a[i-1] = temp;
            count++;
        }
    }
}
