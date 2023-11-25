#include <stdio.h>

void get_maxlen(char s[], int len) {
    int c, i, j, k;
    i = 0;
    k = 0;
    while((c = getchar()) != EOF || i != len) {
        s[i] = c;
        i++;
        if(c == '\n') {
            for (j = i; j>=k; j--) {
                printf("%c", s[j]);
            }
            k = i;
            printf("\n");
        } 
    }
    return;
}

void main() {
    int len = 100;
    char s[len];
    get_maxlen(s, len);
}