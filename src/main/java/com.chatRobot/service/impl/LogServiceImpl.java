package com.chatRobot.service.impl;

import com.chatRobot.dao.LogMapper;
import com.chatRobot.model.Log;
import com.chatRobot.service.LogService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by Cookbooks on 2018/1/18.
 */
@Service("LogService")
public class LogServiceImpl implements LogService {
    @Resource
    private LogMapper LogDao;
    public List<Log> searchByPage(String param,int page,int size){
        List<Log> res=new ArrayList<>();
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        if("".equals(param))
            res=LogDao.getAll(page*size-size,size);
        else {
            if(pattern.matcher(param).matches())
                res=LogDao.selectByPage(Integer.parseInt(param),page*size-size,size);
        }
        return res;
    }



    public long searchCount(String param){
        long res=0;
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        if("".equals(param))
            res=LogDao.getCount();
        else {
            if(pattern.matcher(param).matches())
                res = LogDao.getLogCount(Integer.parseInt(param));
        }
        return res;
    }

//    @Transactional
//    public boolean insertLog(Log Log){
//        Log.setCreateDate(new Date());
//        Log.setMoney(0);
//        Log.setFlag("冻结");
//        Log.setAcNum(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
//        int i=LogDao.insert(Log);
//        if(i<0)return false;
//        else
//            return true;
//    }
//


    public boolean deleteLog(int sId){
        LogDao.deleteByPrimaryKey(sId);
            return true;
    }

    @Transactional
    public boolean deleteAll(String str[] ){
        try {
            for (int i = 0; i < str.length; i++) {
                LogDao.deleteByPrimaryKey(Integer.parseInt(str[i]));
            }
            return true;
        }
        catch( RuntimeException r){
            return false;
        }
    }
}
