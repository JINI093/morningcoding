class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;

    // XOR 연산을 사용하여 한 번만 나타나는 숫자 찾기
    for (int num in nums) {
      result ^= num;
    }

    return result;
  }
}
