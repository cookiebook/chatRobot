package com.chatRobot.service.impl;

import com.chatRobot.dao.SalesMapper;
import com.chatRobot.model.Sales;
import com.chatRobot.service.LoginService;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

/**
 * Created by Cookbooks on 2018/1/12.
 */

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
    @Resource
    private SalesMapper salesDao;
    public Sales isSales(Sales sales){
          sales=salesDao.selectByPrimaryKeyandPassword( sales.getsId(),sales.getPassword());
          return sales;

    }
    public void Login(HttpServletRequest request, ModelAndView res, String result) throws UnsupportedEncodingException {
        JSONObject jsonObject=JSONObject.fromObject(result);
        Sales sales=(Sales)JSONObject.toBean(jsonObject, Sales.class);
        sales=salesDao.selectByPrimaryKeyandPassword(sales.getsId(),sales.getPassword());
        if(sales!=null)
        {
            res.addObject("tId",sales.getsId());
            res.setViewName("index");
            res.addObject("User",sales);
            request.getSession().setAttribute("user",sales);
            res.addObject("log","登陆成功");
        }
        else
        {
            res.addObject("tId",0);
            res.addObject("log","登陆失败");
            res.setViewName("redirect:/viewN/loginout");
        }
    }
}
