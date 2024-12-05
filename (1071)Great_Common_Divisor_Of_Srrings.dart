class Solution {
  String gcdOfStrings(String str1, String str2) {
    if (str1 + str2 != str2 + str1) {
      return "";
    }

    int gcd(int a, int b) {
      return b == 0 ? a : gcd(b, a % b);
    }

    int gcdLength = gcd(str1.length, str2.length);
    return str1.substring(0, gcdLength);
  }
}
