package com.chatRobot.service;

import com.chatRobot.model.Sales;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
public interface SalesService {
    Sales selByID(Sales sales);
    List<Sales> selAll(int size);
    void choose(ModelAndView modelAndView,String Json);
    List<Sales> search(String Json,int page);
    List<Sales> searchByPage(String Json,int page,int size);
    long searchCount(String param);
    boolean insertSales(Sales sales);
    boolean updateSales(Sales sales);
    boolean deleteSales(Integer sId);
    boolean deleteAll(String []str);



}
