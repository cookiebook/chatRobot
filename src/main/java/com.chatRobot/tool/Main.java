package com.chatRobot.tool;

import java.util.HashSet;
import java.util.Scanner;

/**
 * Created by Cookbooks on 2018/3/20.
 */
public class Main {


    public static void main(String []argc){
        Scanner scanner=new Scanner(System.in);
        HashSet hashSet =new HashSet();
        String s=scanner.nextLine();
        String s1=scanner.nextLine();
        for(int i=0;i<s1.length();i++)
        {
            hashSet.add(s1.charAt(i));
        }

        for(int i=0;i<s.length()-1;i++){
            if(!hashSet.contains(s.charAt(i)))System.out.print(s.charAt(i));
        }
    }

}
