import 'dart:math';

class Solution {
  int minCostClimbingStairs(List<int> cost) {
    int n = cost.length;

    // 각 위치까지의 최소 비용을 저장할 배열
    List<int> dp = List.filled(n + 1, 0);

    // 처음 두 계단은 직접 도달 가능
    dp[0] = 0;
    dp[1] = 0;

    // 각 위치까지의 최소 비용 계산
    for (int i = 2; i <= n; i++) {
      dp[i] = min(
          dp[i - 1] + cost[i - 1], // 한 계단 전에서 오는 경우
          dp[i - 2] + cost[i - 2] // 두 계단 전에서 오는 경우
          );
    }

    return dp[n]; // 마지막 위치까지의 최소 비용
  }
}
