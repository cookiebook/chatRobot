package com.chatRobot.service.impl;

import com.chatRobot.dao.customMapper;
import com.chatRobot.model.custom;
import com.chatRobot.service.customService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by Cookbooks on 2018/1/18.
 */
@Service("customService")
public class customServiceImpl implements customService {
    @Resource
    private customMapper customDao;
    public List<custom> searchByPage(String Json,int page,int size){
        List<custom> res;
        res=customDao.selectByPage(Json,page*size-size,size);
        return res;
    }
    public long searchCount(String param){
        long res;
        res=customDao.getcustomCount(param);
        return res;
    }




    @Transactional
    public boolean insertcustom(custom custom){
        try {
            custom.setCreatedDate(new Date());
            custom.setcNo(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
            customDao.insert(custom);
        }
        catch(Exception e){
            return false;
        }
            return true;
    }
//
    @Transactional
    public boolean updatecustom(custom cus){
        try {
            custom s = customDao.selectByPrimaryKey(cus.getcNo());
            s.setcName(cus.getcName());
            s.setAddress(cus.getAddress());
            s.setPhone(cus.getPhone());
            s.setEmail(cus.getEmail());
            s.setHobby(cus.getHobby());
            customDao.updateByPrimaryKey(s);
            return true;
        }
        catch(RuntimeException r){
            return false;
        }
    }

    public boolean deletecustom(Integer sId){
        customDao.deleteByPrimaryKey(sId);
            return true;
    }

    @Transactional
    public boolean deleteAll(String str[] ){
        try {
            for (int i = 0; i < str.length; i++) {
                Integer tmp = Integer.parseInt(str[i]);
                customDao.deleteByPrimaryKey(tmp);
            }
            return true;
        }
        catch( RuntimeException r){
            return false;
        }
    }
}
