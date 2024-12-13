import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    // 첫 k개 원소의 합 계산
    int sum = 0;
    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }

    // 최대 합을 첫 k개 원소의 합으로 초기화
    int maxSum = sum;

    // 슬라이딩 윈도우로 나머지 부분 배열 확인
    for (int i = k; i < nums.length; i++) {
      sum = sum - nums[i - k] + nums[i];
      maxSum = max(maxSum, sum);
    }

    // 최대 평균값 계산 (소수점 5자리까지)
    return maxSum / k;
  }
}
