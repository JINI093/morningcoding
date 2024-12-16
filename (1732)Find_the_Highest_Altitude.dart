class Solution {
  int largestAltitude(List<int> gain) {
    int currentAltitude = 0; // 현재 고도
    int maxAltitude = 0; // 최대 고도

    for (int change in gain) {
      currentAltitude += change; // 고도 변화 적용
      maxAltitude = maxAltitude < currentAltitude
          ? currentAltitude
          : maxAltitude; // 최대값 갱신
    }

    return maxAltitude;
  }
}
