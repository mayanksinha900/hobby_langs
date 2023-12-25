#include <stdio.h>

int main() {
    int c, i, nwhite = 0, nother = 0;
    int ndigits[10];

    for(i = 0; i<10; i++){
        ndigits[i] = 0;
    }

    while((c = getchar()) != EOF){
        switch (c) {
            case '0': case '1': case '2': case '3': case '4':
            case '5': case '6': case '7': case '8': case '9':
                ndigits[c-'0']++;
                break;
            case ' ':
                nwhite++;
                break;
            default:
                nother++;
                break;

        }
    }

    printf("Digits:\n");
    for (i=0; i<10; i++) printf("\t%d = %d\n", i, ndigits[i]);

    printf("Whites = %d \nOthers = %d\n", nwhite, nother);

    return 0;
}
