class Solution {
  int pivotIndex(List<int> nums) {
    int totalSum = 0;
    int leftSum = 0;

    // 전체 합계 계산
    for (int num in nums) {
      totalSum += num;
    }

    // 각 인덱스를 피벗으로 검사
    for (int i = 0; i < nums.length; i++) {
      // 오른쪽 합 = 전체 합 - 왼쪽 합 - 현재 값
      if (leftSum == totalSum - leftSum - nums[i]) {
        return i; // 피벗 인덱스 발견
      }
      leftSum += nums[i]; // 왼쪽 합 갱신
    }

    return -1; // 피벗 인덱스가 없는 경우
  }
}
