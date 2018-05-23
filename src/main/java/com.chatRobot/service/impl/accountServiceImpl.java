package com.chatRobot.service.impl;

import com.chatRobot.dao.accountMapper;
import com.chatRobot.model.account;
import com.chatRobot.service.accountService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by Cookbooks on 2018/1/18.
 */
@Service("accountService")
public class accountServiceImpl implements accountService {
    @Resource
    private accountMapper accountDao;
    public List<account> searchByPage(String param,int page,int size){
        List<account> res=new ArrayList<>();
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        if("".equals(param))
            res=accountDao.getAll(page*size-size,size);
        else {
            if(pattern.matcher(param).matches())
                res=accountDao.selectByPage(Integer.parseInt(param),page*size-size,size);
        }
        return res;
    }
    public long searchCount(String param){
        long res=0;
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        if("".equals(param))
            res=accountDao.getCount();
        else {
            if(pattern.matcher(param).matches())
                res = accountDao.getaccountCount(Integer.parseInt(param));
        }
        return res;
    }


    public List<account> searchById(int param){
        List<account> res = accountDao.selectBycNo(param);
        return res;
    }

    @Transactional
    public boolean insertaccount(account account){
        if(accountDao.selectBycNo(account.getCno()).size()==0) {
            account.setCreateDate(new Date());
            account.setMoney(new Double(0));
            account.setFlag("冻结");
            account.setAcNum(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
            int i=accountDao.insert(account);
            if(i<0)return false;
            return true;
        }
        else
            return false;


    }
//
    @Transactional
    public boolean updateaccount(account cus){
        try {
            account s = accountDao.selectByPrimaryKey(cus.getAcNum());
            s.setCno(cus.getCno());
            s.setFlag(cus.getFlag());
            s.setMoney(cus.getMoney());
            accountDao.updateByPrimaryKey(s);
            return true;
        }
        catch(RuntimeException r){
            return false;
        }
    }

    public boolean deleteaccount(int sId){
        accountDao.deleteByPrimaryKey(sId);
            return true;
    }

    @Transactional
    public boolean deleteAll(String str[] ){
        try {
            for (int i = 0; i < str.length; i++) {
                accountDao.deleteByPrimaryKey(Integer.parseInt(str[i]));
            }
            return true;
        }
        catch( RuntimeException r){
            return false;
        }
    }
}
