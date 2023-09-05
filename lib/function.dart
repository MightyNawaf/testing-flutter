
int getFactorial(int number) {
  if (number == 0 || number == 1) return 1;
  return number * getFactorial(number - 1);
}

int addition(int n1, int n2) => n1+n2;
