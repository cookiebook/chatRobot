package com.chatRobot.controller;

/**
 * Created by Cookbooks on 2018/1/15.
 */
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * DateTime: 2016/11/2 22:10
 * 功能：
 * 思路：
 */
public class AopTest {
    public static void main(String[] args) {
        ApplicationContext context=new ClassPathXmlApplicationContext("spring-mvc.xml");
        Person person= (Person) context.getBean("person");

        System.out.println();
        person.eatBreakfast();
        System.out.println();

        person.eatLunch();
        System.out.println();

        person.eatSupper();
        System.out.println();
    }
}
