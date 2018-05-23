package com.chatRobot.service;

import com.chatRobot.model.custom;

import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
public interface customService {
    List<custom> searchByPage(String Json, int page, int size);
    long searchCount(String param);
    boolean insertcustom(custom cus);
    boolean updatecustom(custom cus);
    boolean deletecustom(Integer sId);
    boolean deleteAll(String[] str);



}
