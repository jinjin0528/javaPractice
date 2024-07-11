package com.ohgiraffers.section01.method;

public class Application6 {
    public static void main(String[] args) {

        /* 수업목표. 변환값이 있는 메소드를 작성할 수 있다 */
        String result = testMethod1(); // static을 사용했기 떄문에 클래스 선언 필요없이 인지 가능.
        System.out.println("result = " + result);

        /* 설명. 따로 굳이 변수에 담을 필요가 없다면 반환값을 바로 활용하는 것도 가능하다 */
        System.out.println("testMethod = " + testMethod1());
    }
    public static String testMethod1 () {
        System.out.println("test() 메소드 실행함...");
        return "test" ; // String을 썼기 때문에 문자열을 뱉어줘야 한다.
    }
}
