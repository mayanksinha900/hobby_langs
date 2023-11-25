#include <stdio.h>

int check_array(int line[]) {
  int i;
  for(i = 0; i < 3; i++){
    line[i]++;
  }
  return 0;
}

int main() {
  int a[3] = {3, 4, 5};
  int i;

  for(i = 0; i < 3; i++) printf("%d", a[i]);
  printf("\n");

  check_array(a);
  
  for(i = 0; i < 3; i++) printf("%d", a[i]);
  printf("\n");

  return 0;
}