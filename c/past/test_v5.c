#include <stdio.h>

float convert(int temp);

int main() {
  int i;

  for(i = 0; i <= 100; i = i+20){
    printf("%0.2f\n", convert(i));
  }
}

float convert(int temp) {
  return (temp * (9.0 / 5.0) + 32.0);
}