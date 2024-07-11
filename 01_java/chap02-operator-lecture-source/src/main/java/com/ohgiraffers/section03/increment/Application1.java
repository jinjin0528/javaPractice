package com.ohgiraffers.section03.increment;

public class Application1 {
    public static void main(String[] args) {

        /* 수업목표. 단항연산자이자 증감연산자에 대해 이해하고 활용할 수 있다. */
        int num = 20;
        System.out.println("num = " + num++);   // 20
        System.out.println("num = " + num++);   // 21

        num--;
        System.out.println("num = " + num--);   // 21
        System.out.println("num = " + num--);   // 20

        --num;
        System.out.println("num = " + num--);   // 18

        ++num;
        System.out.println("num = " + num);     // 18

        /* 설명. 증감연산자를 다른 연산(대입, 산술연산, 출력 등)과  함께 사용 */
        int firstNum = 20;

        int result1 = firstNum++ +3;
        System.out.println("result1 = " + result1);     // 23
        System.out.println("firstNum = " + firstNum);   // 21

        int a = 3;
        int b = 5;
        int c = -1;
        int d = a + --b;
        b = 2 * (-c + a++) - d;
        c *= 2;
        a = b++ + c;

        System.out.println("a = " + a);
        System.out.println("b = " + b);
        System.out.println("c = " + c);
        System.out.println("d = " + d);
    }
}
