class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    //result값
    //빈 행렬 입력 제거
    //4방향 경계값 설정(top,bottom,left,right)
    //m==matrix.length
    //n==matrix[i].length
    //나선형 순회(while문)
    //겹치는지 확인(if문)
    //결과 반환

    List<int> result = [];

    if(matrix.isEmpty) return result;

    int top = 0;
    int bottom = matrix.length - 1;
    int left = 0;
    int right = matrix[0].length - 1;

    while (top <= bottom && left <= right) {
        //1행 가로 진행
        for (int i = left; i <= right; i++) {
            result.add(matrix[top][i]);
        }
        top++;
        //3열 하행 진행
        for (int i = top; i <= bottom; i++) {
            result.add(matrix[i][right]);
        }
        right--;
        //하단 좌행 진행
        if (top <= bottom) {
        for (int i = right; i >= left; i--) {
            result.add(matrix[bottom][i]);
            }
            bottom--;
        }
        //1열 상행 진행
        if (left <= right) {
        for (int i = bottom; i >= top; i--) {
            result.add(matrix[i][left]);
            }
            left++;
        }
    }
    return result;
  }
}