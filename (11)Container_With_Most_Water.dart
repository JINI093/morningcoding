class Solution {
  int maxArea(List<int> height) {
    int maxWater = 0;
    int left = 0;
    int right = height.length - 1;

    while (left < right) {
      // 현재 용량 계산: 더 낮은 높이 * 거리
      int currentArea = (right - left) *
          (height[left] < height[right] ? height[left] : height[right]);

      // 최대 용량 갱신
      maxWater = maxWater < currentArea ? currentArea : maxWater;

      // 더 낮은 높이를 가진 쪽의 포인터를 이동
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return maxWater;
  }
}
