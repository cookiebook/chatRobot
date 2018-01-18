package com.chatRobot.service.impl;

import com.chatRobot.dao.SalesMapper;
import com.chatRobot.model.Sales;
import com.chatRobot.service.LoginService;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

/**
 * Created by Cookbooks on 2018/1/12.
 */

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
    @Resource
    private SalesMapper salesDao;
    public boolean isSales(Sales sales){
//        salesDao.selectbypassword(sales.getPassword());
         int flag=salesDao.selectByPrimaryKeyandPassword( sales.getsId(),sales.getPassword());
//        salesDao.deleteByPrimaryKey(sales.getsId());
        if(flag==1)
            return true;
        else
            return false;

    }

    public void Login( ModelAndView res, String result) throws UnsupportedEncodingException {
        JSONObject jsonObject=JSONObject.fromObject(result);
        Sales sales=(Sales)JSONObject.toBean(jsonObject, Sales.class);
        if(this.isSales(sales))
        {
            res.setViewName("main");
            res.addObject("username",sales.getsId());
        }
        else
        {
            res.setViewName("login");
            res.addObject("info","用户不存在");
        }
    }
}
