package com.chatRobot.controller;

import com.chatRobot.service.impl.LoginServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class loginController {
    @Resource(name="LoginService")
    private LoginServiceImpl loginService;

    @RequestMapping("view/login")
    public ModelAndView login(HttpServletRequest request,HttpServletResponse response,String result) throws Exception {
        ModelAndView res=new ModelAndView();
        loginService.Login(res,result);
        return res;
    }
    @RequestMapping("/view/autologin")
    public ModelAndView checkCookie(HttpServletRequest request,HttpServletResponse response)
    {
        ModelAndView res=new ModelAndView();
        res.setViewName("main");
        return res;

    }


}
