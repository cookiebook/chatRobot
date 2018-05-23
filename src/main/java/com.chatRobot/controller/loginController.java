package com.chatRobot.controller;

import com.chatRobot.model.Sales;
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
        ModelAndView res=new ModelAndView("login");
        if(result==null)result="{}";
        loginService.Login(request,res,result);
        return res;
    }

    @RequestMapping("/viewN/loginout")
    public ModelAndView loginout(HttpServletRequest request,HttpServletResponse response)
    {
        ModelAndView res=new ModelAndView("login","log","注销");
        Sales sales=(Sales)request.getSession().getAttribute("user");
        if(sales!=null) {
            res.addObject("tId", sales.getsId());
            request.getSession().removeAttribute("user");
        }
        return res;

    }






}
