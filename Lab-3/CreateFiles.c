#include <stdio.h>

void main() {
    FILE *file;
    // BEST CASES
    file = fopen("best_100.txt" , "w");
    for (int i = 1; i <= 100; i++) {
        fprintf(file , "%d ",i);
    }
    fclose(file);

    file = fopen("best_1000.txt" , "w");
    for (int i = 1; i <= 1000; i++) {
        fprintf(file ,"%d ",i);
    }
    fclose(file);

    file = fopen("best_10000.txt" , "w");
    for (int i = 1; i <= 10000; i++) {
        fprintf(file ,"%d ",i);
    }
    fclose(file);

    file = fopen("best_100000.txt" , "w");
    for (int i = 1; i <= 100000; i++) {
        fprintf(file , "%d ",i);
    }
    fclose(file);

    //WORST CASES
    file = fopen("worst_100.txt" , "w");
    for (int i = 100; i > 0; i--) {
        fprintf(file , "%d ",i);
    }
    fclose(file);

    file = fopen("worst_1000.txt" , "w");
    for (int i = 1000; i > 0; i--) {
        fprintf(file , "%d ",i);
    }
    fclose(file);

    file = fopen("worst_10000.txt" , "w");
    for (int i = 10000; i > 0; i--) {
        fprintf(file , "%d ",i);
    }
    fclose(file);

    file = fopen("worst_100000.txt" , "w");
    for (int i = 100000; i > 0; i--) {
        fprintf(file , "%d ",i);
    }
    fclose(file);


    //AVERAGE CASES
    file = fopen("average_100.txt" , "w");
    for (int i = 1; i <= 100; i++){
        fprintf(file , "%d ",rand() % 100);
    }
    fclose(file);

    file = fopen("average_1000.txt" , "w");
    for (int i = 1; i <= 1000; i++){
        fprintf(file , "%d ",rand() % 1000);
    }
    fclose(file);

    file = fopen("average_10000.txt" , "w");
    for (int i = 1; i <= 10000; i++){
        fprintf(file , "%d ",rand() % 10000);
    }
    fclose(file);

    file = fopen("average_100000.txt" , "w");
    for (int i = 1; i <= 100000; i++){
        fprintf(file , "%d ",rand() % 100000);
    }
    fclose(file);
 
 
}