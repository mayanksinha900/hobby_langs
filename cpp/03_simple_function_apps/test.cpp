// Simple Calculator
#include <iostream>
#include <string>

float sum(float a, float b){
    return a+b;
}
float mult(float a, float b){
    return a*b;
}


int main() {
    float a = 5.2;
    float b = 6.8;
    float addition = sum(a, b);
    float multiply = mult(a, b);

    printf("Sum of %.2f and %.2f is %.2f while their product is %.2f. \n", a, b, addition, multiply);

    int first {4};
    int second {223};

    std::cout << "Nums: " << first << " and " << second << std::endl;

    // int value;
    // std::cin >> value;
    // std::cout << value << std::endl;
 
    char chk;
    chk = 'H';
    printf("%c\n", chk);

    char var[] = "Hello";
    int lenVar = sizeof(var);
    printf("%c\n", var[4]);
    printf("%d\n", lenVar);

    return 0;

}
