package com.chatRobot.service;

import com.chatRobot.model.Log;

import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
public interface LogService {
    List<Log> searchByPage(String Json, int page, int size);
    long searchCount(String param);
//    boolean insertLog(Log cus);
    boolean deleteLog(int sId);
    boolean deleteAll(String[] str);



}
