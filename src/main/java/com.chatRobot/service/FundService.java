package com.chatRobot.service;

import com.chatRobot.model.Fund;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
public interface FundService {
    List<Fund> searchByPage(String Json, int page, int size);
    List<Fund> selectAll();
    Fund searchById(String id);
    long searchCount(String param);
    boolean insertFund(Fund cus);
    boolean updateFund(Fund cus);
    boolean deleteFund(int sId);
    boolean deleteAll(String[] str);
    ModelAndView buyFund(String result);
    boolean updateAll();
    Fund updateByInterface(Fund res);




}
