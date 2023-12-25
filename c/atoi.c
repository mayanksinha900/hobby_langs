#include <stdio.h>

int atoi(char s[]){
    int i, n;
    
    i = 0;
    n = 0;
    unsigned int check = 0;

    if(s[0] == '-'){
        i++;
        check = 1;
    }

    while (1) {
        if (s[i] == '\0'){
            break;
        }
        if (s[i] < '0' || s[i] > '9'){
            printf("String contains character outside of the 0-9.\n");
            return -1;
        }
        else{
            n = 10*n + (s[i] - '0');
        }
        i++;
    }

    if (check) n *= -1;

    return n;
}

int main(int argc, char *argv[])
{
    char s[] = "-567";
    int v = atoi(s);

    if (v == -1){
        printf("ERROR CODE: -1\n");
    }
    else{
        printf("%d\n", v);
    }

    return 0;
}
