class Solution {
  int maximumWealth(List<List<int>> accounts) {
    //최대 자산값 지정
    //각 고객 계좌 반복(for문)
    //각 고객 계좌 금액 합산
    //고객 합산 금액과 보유 자산을 비교하여 큰 값 반환
    int maxWealth = 0;
    for (var customer in accounts) {
        int currentWealth = 0;

        for (var money in customer) {
            currentWealth += money;
        }

        if (maxWealth < currentWealth) {
            maxWealth = currentWealth;
        }
    }

    return maxWealth;
  }
}