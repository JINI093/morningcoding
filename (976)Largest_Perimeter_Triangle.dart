class Solution {
  int largestPerimeter(List<int> nums) {
    //배열을 내림차순으로 정리
    //배열을 순회하면서(for문) 연속된 3개의 수 확인
    //삼각형의 조건 확인(if문)
    //삼각형(nums[i] < nums[i+1] + nums[i+2])
    //삼각형이 가능한 경우 세 변의 합 반환
    //삼각형을 만들수 없으면 0 반환

    nums.sort((a,b) => b.compareTo(a)); //내림차순 정리

    for (int i = 0; i < nums.length - 2; i++) {
        if (nums[i] < nums[i+1] + nums[i+2]) {
            return nums[i] + nums[i + 1] + nums[i + 2];
        }
    }

    return 0;
  }
}