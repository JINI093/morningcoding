class Solution {
  int diagonalSum(List<List<int>> mat) {
    //주 대각선은 항상 mat[i][i]
    //부 대각석은 항상 mat[i][n-1-i]
    //n*n행렬 생성(int)
    //주 대각선, 부대각선 변수 초기화(int primaryDiagonal = 0; int secondaryDiagonal = 0;)
    //대각선 합 계산(주, 부)(for문)
    //중앙 중복 처리(if문)
    //최종값 반환

    int n = mat.length;
    int primaryDiagonal = 0;
    int secondaryDiagonal = 0;

    for (int i = 0; i < n; i++) {
        //주 대각선의 합
        primaryDiagonal += mat[i][i];
        //부 대각선의 합
        secondaryDiagonal += mat[i][n-1-i];
    }

    //if문 센터가 있을경우 값을 한 번 빼준다. 센터(홀수면 중복, n % 2)
    if (n % 2 == 1) {
        int center = n ~/ 2;
        secondaryDiagonal -= mat[center][center];
    }

    return primaryDiagonal + secondaryDiagonal;
  }
}