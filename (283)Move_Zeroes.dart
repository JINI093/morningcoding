class Solution {
  void moveZeroes(List<int> nums) {
    int nonZeroIndex = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        // 0이 아닌 숫자를 발견했을 때만 swap하고 nonZeroIndex 증가
        int temp = nums[nonZeroIndex];
        nums[nonZeroIndex] = nums[i];
        nums[i] = temp;
        nonZeroIndex++;
      }
    }
  }
}
