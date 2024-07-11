package com.ohgiraffers.section01.method;

public class Application2 {
    public static void main(String[] args) {
        System.out.println("main() 시작됨...");
    /* 필기. static이 없는 메소드(non-static method)는 해당 클래스를 인지시킨 후 접근해 호출한다 */
       //  methodA();  static이 아니라 오류 발생
        Application2 app = new Application2(); // class Application2를 인식시켜주면서 활용
        app.methodA();
        System.out.println("main() 종료됨...");
    }
    public void methodA() {
        System.out.println("methodA() 호출됨...");
        methodB();  // app을 선언하면서 app을 붙이지 않아도 자동 인지가 됨.
        System.out.println("methodA() 종료됨...");
    }
    public void methodB() {
        System.out.println("methodB() 호출됨...");
        System.out.println("methodB() 종료됨...");
    }
}
