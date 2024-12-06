class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    //가장 많은 사탕을 가진 아이 찾기(reduce함수)
    //각 아이가 가장 많은 사탕을 가질 수 있는지 확인(map)
    //결과 반환

    int maxCandies = candies.reduce((a, b) => a > b ? a : b);

    return candies
        .map((candy) => (candy + extraCandies) >= maxCandies)
        .toList();
  }
}
