#include <stdio.h>

int main(){
    int i = 0;
    int height = 12;
    for (i = 1; i<height; i++){
        int j;
        for (j=0; j<(height-i); j++){
            printf(" ");
        }
        for (j=0; j<i; j++) {
            printf("*");
        }
        printf("\n");
    }
}
