package com.chatRobot.service.impl;

import com.chatRobot.dao.SalesMapper;
import com.chatRobot.model.Sales;
import com.chatRobot.service.SalesService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by Cookbooks on 2018/1/18.
 */
@Service("SalesService")
public class SalesServiceImpl implements SalesService {
    @Resource
    private SalesMapper salesDao;

    public Sales selByID(Sales sales) {
        if (sales.getsId()!=null) {
            sales = salesDao.selectByPrimaryKey(sales.getsId());
            return sales;
        } else {
            return null;
        }
    }

    public List<Sales> selAll(int size) {
        if (size >= 0) {
            List<Sales> res = salesDao.selectAll(10);
            return res;
        }
        else
            return null;
    }

    public void choose(ModelAndView modelAndView, String Json)
    {
        List<Sales> res = salesDao.selectAll(10);
        if(res.size()!=0)
        {
            modelAndView.addObject("list",res);
            modelAndView.setViewName("salessearch");
        }
        else
           modelAndView.setViewName("redirect:/viewN/error");

    }
    public List<Sales> search(String Json,int page){
        List<Sales> res=new ArrayList<>(),tmp=new ArrayList<>();
        if(Json.length()!=0&&Pattern.compile("^[-\\+]?[\\d]*$").matcher(Json).matches())
        {
            tmp.add(salesDao.selectByPrimaryKey(Integer.parseInt(Json)));
            res.addAll(tmp);
        }
        tmp=salesDao.selectByRealname(Json);
        res.addAll(tmp);
        if(Json.length()!=0) {
            tmp = salesDao.selectByUsername(Json);
            res.addAll(tmp);
        }
        return res;
    }
    public List<Sales> searchByPage(String Json,int page,int size){
        List<Sales> res;
        res=salesDao.selectByPage(Json,page*size-size,size);
        return res;
    }
    public long searchCount(String param){
        long res;
        res=salesDao.getSalesCount(param);
        return res;
    }

    @Transactional
    public boolean insertSales(Sales sales){
        sales.setCreatedData(new Date());
        sales.setPermission(0);
        sales.setUssername("");
        int i=salesDao.insert(sales);
        if(i<0)return false;
        else
            return true;
    }

    @Transactional
    public boolean updateSales(Sales sales){
        try {
            Sales s = salesDao.selectByPrimaryKey(sales.getsId());
            s.setUssername(sales.getUssername());
            s.setPermission(sales.getPermission());
            s.setPhoneNo(sales.getPhoneNo());
            s.setPosition(sales.getPosition());
            salesDao.updateByPrimaryKey(s);
            return true;
        }
        catch(RuntimeException r){
            return false;
        }
    }

    public boolean deleteSales(Integer sId){
        salesDao.deleteByPrimaryKey(sId);
            return true;
    }

    @Transactional
    public boolean deleteAll(String str[] ){
        try {
            for (int i = 0; i < str.length; i++) {
                Integer tmp = Integer.parseInt(str[i]);
                salesDao.deleteByPrimaryKey(tmp);
            }
            return true;
        }
        catch( RuntimeException r){
            return false;
        }
    }
}
