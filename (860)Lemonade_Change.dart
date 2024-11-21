class Solution {
  bool lemonadeChange(List<int> bills) {
    //5달러와 10달러 지폐 개수 확인
    //반복문(for문)으로 계산
    //계산시 5달러를 받으면 그냥 보관(if문)
    //계산시 10달러를 받으면 5달러 거스름돈(else if)
    //계산시 20달러를 받으면 15달러 거스름돈(else if)
    //결과값 반환

    int five = 0;
    int ten = 0;

    for (int bill in bills) {
        if (bill == 5) {
            five++;
        }
        else if (bill == 10) {
            //10달러 지폐는 5달러 거스름돈 five--; ten++;
            if (five == 0) return false; //거스름돈이 없으면 false
            five--;
            ten++;
        }
        else if (bill == 20) {
            //20달러 지폐는 10달러+5달러 혹은 5달러 3장
            if (ten > 0 && five > 0) {
                ten--;
                five--;
            }
            else if (five >= 3) {
                five -=3;
            }
            else {
                return false;
            }
        }
    }

    return true;
  }
}