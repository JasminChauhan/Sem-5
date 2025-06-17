#include <stdio.h>
#include <time.h>


void bubbleSort(int arr[] ,int n) {
    for (int i = 0; i < n - 1; i++) {
        int swapped = 0;
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = 1;
            }
        }
        if (swapped == 0) break;
    }
}

void main() {
    FILE *file;
    clock_t start, end;
    double cpu_time_used;
    int arr[100000];
    int n = 100000;
    file = fopen("average_100000.txt","r");

    for (int i = 0; i < n; i++) {
        fscanf(file, "%d" , &arr[i]);
    }
    fclose(file);

    printf ("Worst Case 100000 Inputs....");
    start = clock();
    bubbleSort(arr , n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("%lf" , cpu_time_used);

}