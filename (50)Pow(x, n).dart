double myPow(double x, int n) {
  // n이 0일 경우, 어떤 수의 0 제곱은 1
  if (n == 0) return 1.0;

  // n이 음수일 경우, x^n = 1 / (x^(-n))
  if (n < 0) {
    x = 1 / x;
    n = -n;
  }

  double result = 1.0;
  double currentProduct = x;

  for (int i = 0; i < n; i++) {
    result *= currentProduct;
  }

  return result;
}
