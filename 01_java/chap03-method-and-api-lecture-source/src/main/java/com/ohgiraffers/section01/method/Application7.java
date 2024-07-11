package com.ohgiraffers.section01.method;

public class Application7 {
    public static void main(String[] args) {
        /* 수업목표. 다른 클래스에 작성한 메소드를 활용할 수 있다. */
        int first = 100;
        int second = 50;

        Calculator cal = new Calculator();

        /* 설명. 덧셈 */
        System.out.println("두 수의 합은: " + cal.plusTwoNumbers(first, second));

        /* 설명. 최소값 */
        System.out.println("두 수 중 작은 값은?: " + cal.minNumbersOf(first, second));

        /* 설명. 최대값 */
        System.out.println("두 수 중 큰 값은? " + cal.maxNumbersOf(first, second));
        // static 메소드일 경우 굳이 위에 Calculator클래스를 선언해주지 않아도 인지가 됨
        // 원래는 static 사용 시 앞에 클래스 명을 언급하지만 같은 클래스 안에서 사용할 경우 굳이 같이 언급하지 않아도 됨
    }

}
