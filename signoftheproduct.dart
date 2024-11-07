class Solution {
  int arraySign(List<int> nums) {
    if (nums.contains(0)) {
        return 0;
    }
    int count = nums.where((num) => num < 0).length;

    if (count % 2 == 0) {
        return 1;
    } else {
        return -1;
    }
  }
}