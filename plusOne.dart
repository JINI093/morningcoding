class Solution {
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
        if (digits[i] < 9) {
            digits[i]++;
            return digits;
        }
        digits[i] = 0;
    }
    List<int> result = List<int>.filled(digits.length + 1, 0);
    result[0] = 1;
    return result;
  }
}