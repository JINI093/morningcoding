class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int count = 0;
    int i = 0;

    while (i < flowerbed.length) {
      // 현재 위치가 비어있고
      // (첫 위치이거나 이전 위치가 비어있음) 그리고
      // (마지막 위치이거나 다음 위치가 비어있음)
      if (flowerbed[i] == 0 &&
          (i == 0 || flowerbed[i - 1] == 0) &&
          (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)) {
        flowerbed[i] = 1; // 꽃을 심음
        count++; // 심은 꽃 개수 증가
      }
      i++;
    }

    return count >= n; // 필요한 만큼 꽃을 심을 수 있는지 확인
  }
}
