class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    // Set으로 변환하여 중복 제거
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();

    // 각 배열에만 존재하는 원소 찾기
    List<int> onlyInNums1 = set1.where((num) => !set2.contains(num)).toList();
    List<int> onlyInNums2 = set2.where((num) => !set1.contains(num)).toList();

    return [onlyInNums1, onlyInNums2];
  }
}
