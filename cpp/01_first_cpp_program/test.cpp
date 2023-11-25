// First app and use of cout, endl and printf
#include <iostream>

consteval int get_value(){
    return 3;
}

int main(){
    constexpr int value = get_value();
    std::cout << "value: " << value << std::endl;
    printf("Value: %d \n", value);
    return 0;
}
