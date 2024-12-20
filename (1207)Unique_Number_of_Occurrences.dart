class Solution {
  bool uniqueOccurrences(List<int> arr) {
    // 각 숫자의 빈도수 계산
    Map<int, int> freq = {};
    for (int num in arr) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

    // 빈도수들을 Set으로 변환하여 중복 체크
    Set<int> freqSet = freq.values.toSet();

    // 빈도수의 개수와 고유한 빈도수의 개수가 같은지 확인
    return freq.length == freqSet.length;
  }
}
