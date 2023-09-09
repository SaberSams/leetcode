#include <stdio.h>

int _countBits(int num)
{
  int n = 1;
  int sum = 0;

  for(int bit = 0; bit <= 17; bit++)
  {
    sum += ((num & (1 << bit)) >> bit);
  }
  return sum;
}

int* countBits(int n, int* returnSize)
{
  int* result = (int*)malloc(sizeof(int) * (n + 1));
  *returnSize = n + 1;

  for(int i = 0; i <= n; i++)
  {
    result[i] = _countBits(i);
  }
  return result;
}


int main()
{
  int n = 2;
  int returnSize = 0;
  int* result = countBits(n, &returnSize);

  printf("[");
  for(int i = 0; i < returnSize; i++)
  {
    printf("%d ", result[i]);
  }
  printf("]\n");
  return 0;
}
