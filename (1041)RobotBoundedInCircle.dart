class Solution {
  bool isRobotBounded(String instructions) {
    //초기 위치 초기화
    int x = 0;
    int y = 0;
    //방향 설정
    int dirX = 0;
    int dirY = 1;
    //주어진 명령어 실행 switch case 'G,L,R'
    for (int i = 0; i < instructions.length; i++) {
        switch (instructions[i]) {
            case 'G':
                x += dirX;
                y += dirY;
                break;
            case 'L':
                int temp = dirX;
                dirX = -dirY;
                dirY = temp;
                break;
            case 'R':
                int temp = dirX;
                dirX = dirY;
                dirY = -temp;
        }
    }
    //결과 반환
    return (x == 0 && y == 0) || (dirX != 0 || dirY != 1);
  }
}