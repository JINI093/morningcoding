class Solution {
  bool isMonotonic(List<int> nums) {
    if (nums.length <= 1) return true; 
    bool increasing = true;
    bool decreasing = true;

    for (int i = 1; i < nums.length; i++) {
        // 증가하지 않는 경우
        if (nums[i] < nums[i-1]) {
            increasing = false;
        }
        // 감소하지 않는 경우
        if (nums[i] > nums[i-1]) {
            decreasing = false;
        }
        // 증감 모두 flase면 단조가 아님
        if (!increasing && !decreasing) {
            return false;
        }
    }

    return increasing || decreasing; //증감 하나라도 true면 단조
  }
}