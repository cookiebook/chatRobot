package com.chatRobot.tool;

/**
 * Created by Cookbooks on 2018/1/17.
 */
public class JudgeLogType {
    public static String getType(String s){
        String str[]=s.split("/");
        return str[str.length-1];
    }
}
