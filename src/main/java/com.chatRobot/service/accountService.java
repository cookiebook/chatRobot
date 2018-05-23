package com.chatRobot.service;

import com.chatRobot.model.account;

import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
public interface accountService {
    List<account> searchByPage(String Json,int page, int size);
    long searchCount(String param);
    boolean insertaccount(account cus);
    boolean updateaccount(account cus);
    boolean deleteaccount(int sId);
    boolean deleteAll(String[] str);
    List<account> searchById(int param);



}
