#include <stdio.h>
#include <stdbool.h>

int reverseInt(int x)
{
  long y = 0;
  for(; x > 0; x /= 10)
  {
    y = y * 10 + (x % 10);
  }
  return y;
}

bool isPalindrome(int x)
{
  if (x < 0) return false;
  return (long)x == reverseInt(x);
}

int main()
{
  printf("%d -> %d", 1234567899, isPalindrome(1234567899));
}
