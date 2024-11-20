import 'dart:math';

class Solution {
  double average(List<int> salary) {
    //최소값 계산
    //최대값 계산
    //반복문(for문)으로 최소값, 최대값을 순회하여 합 계산
    //전체 합에서 최대, 최소값 빼기
    //남은 개수로 나눠서 평균값 내기

    int minSalary = salary[0];
    int maxSalary = salary[0];
    double sum = 0;

    for (int pay in salary) {
        minSalary = min(minSalary, pay);
        maxSalary = max(maxSalary, pay);
        sum += pay;
    }

    sum = sum - minSalary - maxSalary;
    
    return sum / (salary.length - 2);
  }
}