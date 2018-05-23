package com.chatRobot.tool;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by Cookbooks on 2018/5/23.
 */
public class TimeFormat {
    public static String Timeformat(Date date,String format) throws ParseException {
        String res;
        SimpleDateFormat sdf1= new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
        SimpleDateFormat sdf2= new SimpleDateFormat(format);
        res=sdf2.format(sdf1.parse(date.toString()));
        return res;
    }
}
