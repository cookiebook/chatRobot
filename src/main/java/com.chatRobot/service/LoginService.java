package com.chatRobot.service;
import com.chatRobot.model.Sales;
import org.springframework.web.servlet.ModelAndView;
import java.io.UnsupportedEncodingException;
/**
 * Created by Cookbooks on 2018/1/12.
 */
public interface LoginService {
    //判断是否存在该用户
     boolean isSales(Sales sales);
     void Login(ModelAndView res, String result) throws UnsupportedEncodingException;
}
