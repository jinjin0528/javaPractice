package com.ohgiraffers.section01.method;

public class Application1 {
    public static void main(String[] args) {

        /* 수업목표. 메소드의 호출과 메소드의 흐름에 대해 이해할 수 있다. */
        /* 목차 */
        System.out.println("main() 시작함...");
        methodA();
        methodB();
        methodC();
        System.out.println("main() 종료됨...");

    }   // {} = main method : 프로그램의 시작과 끝.

    public static void methodA() {
        System.out.println("methodA() 호출됨...");
        methodB();
        System.out.println("methodA() 종료됨...");
    }
    public static void methodB() {
        System.out.println("methodB() 호출됨...");
        System.out.println("methodB() 종료됨...");
    }
    public static void methodC() {
        System.out.println("methodC() 호출됨...");
        methodB();
        System.out.println("methodC() 종료됨...");
    }
}
