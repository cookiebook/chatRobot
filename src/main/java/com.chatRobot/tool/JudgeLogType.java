package com.chatRobot.tool;

/**
 * Created by Cookbooks on 2018/1/17.
 */
public class JudgeLogType {
    public static String getType(String s){
        if(s.indexOf("login")!=-1)
            return "1";
        else
            return "0";
    }
}
