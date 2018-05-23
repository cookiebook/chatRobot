package com.chatRobot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Cookbooks on 2018/4/17.
 */
@Controller
public class error {
    @RequestMapping(value = "viewN/error")
    public ModelAndView errorView(HttpServletRequest request, HttpServletResponse response)
    {
        ModelAndView res=new ModelAndView("error");
        return res;
    }
}
