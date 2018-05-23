package com.chatRobot.service.impl;

import com.chatRobot.dao.fundaccountMapper;
import com.chatRobot.model.fundaccount;
import com.chatRobot.service.fundaccountService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by Cookbooks on 2018/1/18.
 */

@Service("fundaccountService")
public class fundaccountServiceImpl implements fundaccountService {
    @Resource
    private fundaccountMapper fundaccountDao;
    public List<fundaccount> searchByPage(String Json,int page,int size){
        List<fundaccount> res;
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        int acNum=-1;
        if(pattern.matcher(Json).matches()&&!"".equals(Json))
            acNum=Integer.parseInt(Json);
        res=fundaccountDao.selectByPage(acNum,page*size-size,size);
        return res;
    }
    public long searchCount(String param){
        long res;
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        int acNum=-1;
        if(pattern.matcher(param).matches()&&!"".equals(param))
            acNum=Integer.parseInt(param);
        res=fundaccountDao.getCount(acNum);
        return res;
    }
    public fundaccount selectById(int id){
        return fundaccountDao.selectByPrimaryKey(id);

    }

    public List<fundaccount> selectByIdsMap(List<String> ids){
        return fundaccountDao.findByIdsMap(ids);
    }




//    @Transactional
//    public boolean insertfundaccount(fundaccount fundaccount){
//        try {
//            fundaccount.setCreatedDate(new Date());
//            fundaccount.setcNo(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
//            fundaccountDao.insert(fundaccount);
//        }
//        catch(Exception e){
//            return false;
//        }
//            return true;
//    }
////
    @Transactional
    public boolean updatefundaccount(fundaccount cus){
        try {
            fundaccount s = fundaccountDao.selectByPrimaryKey(cus.getId());
            s.setCount(cus.getCount());
            s.setPrice(cus.getPrice());
            fundaccountDao.updateByPrimaryKey(s);
            return true;
        }
        catch(RuntimeException r){
            return false;
        }
    }

    public boolean deletefundaccount(Integer sId){
        fundaccountDao.deleteByPrimaryKey(sId);
            return true;
    }

    @Transactional
    public boolean deleteAll(String str[] ){
        try {
            for (int i = 0; i < str.length; i++) {
                Integer tmp = Integer.parseInt(str[i]);
                fundaccountDao.deleteByPrimaryKey(tmp);
            }
            return true;
        }
        catch( RuntimeException r){
            return false;
        }
    }
}
