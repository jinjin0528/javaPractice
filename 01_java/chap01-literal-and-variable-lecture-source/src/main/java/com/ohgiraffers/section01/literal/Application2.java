package com.ohgiraffers.section01.literal;

public class Application2 {
    public static void main(String[] args) {
        /* 수업목표. 값을 직접 연산하여 출력할 수 있다 */
        System.out.println("=========== 정수와 정수의 연산 ============");
        System.out.println(123 + 456);
        System.out.println(456 - 87);
        System.out.println(456 * 78);
        System.out.println(456 / 78);
        System.out.println(456 % 78);       // 필기 : modulus -> mode

        System.out.println("=========== 실수와 실수의 연산============");
        System.out.println(1.23 + 1.23);
        System.out.println(1.23 * 10.0);
        System.out.println(1.23 - 1.21);
        System.out.println(1.23 / 10.0);    // 필기 : 소수점 이하를 보고 싶으면 실수로 계산
        System.out.println(1.23 % 1.0);     // 필기 : 실수는 근사치 값으로 계산이 되므로 이상한 값이 나올 수도

        System.out.println("=========== 정수와 실수의 연산============");
        System.out.println(154 / 5.0);

        System.out.println("=========== 문자와 정수의 연산============");
        System.out.println('a' + 1);        // '문자'는 아스키코드 값으로 계산됨
        System.out.println('b' % 1);

        System.out.println("=========== 문자열과 문자열의 연산============");
        /* 필기 : 문자열과 연산은 '+'만 가능하며 이어붙이기 효과 발생 */
        System.out.println("hello" + "world");
        // System.out.println("hello" * "world");     문자열 곱은 error

        System.out.println("=========== 문자열과 다른 형태의 값 연산============");
        System.out.println("hello" + 123);          // hello123
        System.out.println("hello" + true);         // hellotrue
        System.out.println("hello" + 123 + 2);      // hello1232
        System.out.println("hello" + 123 + 2.0);    // hello1232.0
        System.out.println("hello" + 123.0 + 2);    // hello123.02
        System.out.println(123 + 1 + "hello" + 123.0 + 2.0);    // 124hello123.02.0

        System.out.println("=========== 논리값과 문자열 형태의 값 연산============");
        System.out.println(true + "world");         // trueworld
        System.out.println(true + "문자열");         // true문자열
    }
}
