class Solution {
  bool checkStraightLine(List<List<int>> coordinates) {
    //첫 번째 점과 두 번째 점 기울기 확인 [0][0];[0][1];[1][0];[1][1];
    //나머지 점들의 기울기 계산(for문)
    //(y1 - y0) * (x - x0)

    if (coordinates.length <= 2) return true;

    int x0 = coordinates[0][0];
    int y0 = coordinates[0][1];
    int x1 = coordinates[1][0];
    int y1 = coordinates[1][1];

    for (int i = 2; i < coordinates.length; i++) {
        int x = coordinates[i][0];
        int y = coordinates[i][1];
        
        if ((y1 - y0) * (x - x0) != (y - y0) * (x1 - x0)) {
            return false;
        }
    }

    return true;  // 이 부분이 for문과 같은 레벨에 있어야 함
  }
}