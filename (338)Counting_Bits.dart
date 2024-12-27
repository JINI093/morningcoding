class Solution {
  List<int> countBits(int n) {
    List<int> result = List.filled(n + 1, 0);

    for (int i = 1; i <= n; i++) {
      // i & (i-1)는 마지막 1비트를 제거한 수
      // 따라서 현재 수의 1비트 개수는 i & (i-1)의 1비트 개수 + 1
      result[i] = result[i & (i - 1)] + 1;
    }

    return result;
  }
}
