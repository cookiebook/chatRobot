package com.chatRobot.service;

import com.chatRobot.model.fundaccount;

import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
public interface fundaccountService {
    List<fundaccount> searchByPage(String Json, int page, int size);
    long searchCount(String param);
    fundaccount selectById(int id);
//    boolean insertfundaccount(fundaccount cus);
    boolean updatefundaccount(fundaccount cus);
    List<fundaccount> selectByIdsMap(List<String> ids);
//    boolean deletefundaccount(Integer sId);
//    boolean deleteAll(String[] str);



}
