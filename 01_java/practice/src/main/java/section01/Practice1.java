package section01;

public class Practice1 {
    public int solution(int num1, int num2) {
        int answer = 0;
        num1 = 20;
        num2 = 20;
        if (num1 == num2) {
            answer = 1;
        } else {
            answer = -1;
        }
        return answer;
    }
}