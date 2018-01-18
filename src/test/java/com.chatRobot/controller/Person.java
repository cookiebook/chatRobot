package com.chatRobot.controller;

/**
 * Created by Cookbooks on 2018/1/15.
 */
import org.springframework.stereotype.Component;

/**
 * DateTime: 2016/11/2 21:35
 * 功能：
 * 思路：
 */

@Component
public class Person {

    public void eatBreakfast(){
        System.out.println("......eatBreakfast()早餐......");
    }

    public void eatLunch(){
        System.out.println("......eatLunch()午餐......");
    }

    public void eatSupper(){
        System.out.println("......eatSupper()晚餐......");
    }

}
