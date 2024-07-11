package com.ohgiraffers.section02.package_and_import;

import com.ohgiraffers.section01.method.Calculator;

public class Application2 {
    public static void main(String[] args) {
        /* 수업목표. import에 대해 이해할 수 있다. */
        /* 필기. 패키지의 의미
        *       1. 클래스의 소속이 다르다.(다른 소속에선 같은 클래스명을 쓸 수 있다.)(feat.Date자료형)
        *       2. 원래 클래스명의 일부분이다.
        *       3. 경우에 따라 생략이 가능하다.(하지만 자동으로 작성되는 내용이다.)(같은 패키지일 때는 생략가능) */

        /* 설명. non-static 메소드의 경우 */
        Calculator calculator = new Calculator();
        int result = calculator.plusTwoNumbers(80,22);
        System.out.println("result = " + result);

        int result2 = calculator.maxNumbersOf(40,90);
        System.out.println("result2 = " + result2);
    }
}
