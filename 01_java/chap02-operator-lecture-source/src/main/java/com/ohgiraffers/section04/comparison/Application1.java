package com.ohgiraffers.section04.comparison;

public class Application1 {
    public static void main(String[] args) {

        /* 수업목표. 비교연산자에 대해 이해하고 활용할 수 있다 */
        /* 목차. 1. 숫자값 비교 */
        int iNum1 = 10;
        int iNum2 = 20;
        System.out.println(iNum1 == iNum2); // false
        System.out.println(iNum1 != iNum2); // true
        System.out.println(iNum1 >= iNum2); // false
        System.out.println(iNum1 <= iNum2); // true
        System.out.println(iNum1 > iNum2);  // false
        System.out.println(iNum1 < iNum2);  // true

        /* 목차. 2. 문자값 비교('A'-> 65, 'a'->97) ; 결국 숫자값 비교와 동일 */
System.out.println("-----------------------");
        /* 목차. 3. 논리값 비교 */
        boolean isNumber = true;
        boolean isNumber1 = false;
        System.out.println(isNumber == isNumber1);
        System.out.println(isNumber != isNumber1);
 //       System.out.println(isNumber <= isNumber1);
 //       System.out.println(isNumber >= isNumber1);
 //       System.out.println(isNumber < isNumber1);
 //       System.out.println(isNumber > isNumber1);
System.out.println("-----------------------");
        /* 목차. 4. 문자열값 비교 */
        String str3 = "java";
        String str4 = "java";
        System.out.println(str3 == str4);
        System.out.println(str3 != str4);
 //       System.out.println(str3 >= str4);
 //       System.out.println(str3 <= str4);
 //       System.out.println(str3 < str4);
 //       System.out.println(str3 > str4);
    }
}
