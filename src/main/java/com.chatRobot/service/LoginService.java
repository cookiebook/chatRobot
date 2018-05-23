package com.chatRobot.service;

import com.chatRobot.model.Sales;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
public interface LoginService {
    //判断是否存在该用户
     Sales isSales(Sales sales);
     void Login(HttpServletRequest request, ModelAndView res, String result) throws UnsupportedEncodingException;
}
