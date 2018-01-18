package com.chatRobot.controller;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

/**
 * DateTime: 2016/11/2 21:40
 * 功能：
 * 思路：
 */

@Component
@Aspect
public class AdivceMethod {

    @Before("execution(* com.chatRobot.controller.Person.*(..))")    //匹配Person中的所有方法
    public void beforeEat(){
        System.out.println("...吃饭之前洗手...");
    }

    @After("execution(* com.chatRobot.controller.Person.eatLunch())")  //匹配eatLunch方法
    public void afterEat(){
        System.out.println("...吃饭之后洗碗...");
    }

    @Around("execution(* com.chatRobot.controller.Person.eatSupper())")  //匹配eatSupper方法
    public Object aroundEat(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
        System.out.println("........吃饭前先逛一逛........");
        Object value = proceedingJoinPoint.proceed();
        System.out.println("........吃完后要睡觉了........");
        return value;
    }


}
