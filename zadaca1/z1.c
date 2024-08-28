#include <stdio.h>

int result;//zasto su ovo globalne varijable
int number;

int main(void)
{
  result=number&1;//neparan broj
  printf("%d \n", result);

  return 0;
}
