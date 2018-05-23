package com.chatRobot.controller;

import com.chatRobot.model.account;
import com.chatRobot.service.impl.accountServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;


/**
 * Created by Cookbooks on 2018/1/18.
 */
@Controller
public class accountController {
    @Resource(name="accountService")
    accountServiceImpl accountService;
    @RequestMapping("account/insertaccount")
    public ModelAndView addaccount(@ModelAttribute account cus) throws Exception {
        ModelAndView res=new ModelAndView("accountsearch");
        if (!accountService.insertaccount(cus)){
            res.addObject("log","添加失败");
            res.addObject("tId",cus.getAcNum());
            res.setViewName("redirect:/viewN/error");
        }
        else{
            res.addObject("log","添加成功");
            res.addObject("tId",cus.getAcNum());
        }
        return res;
    }

    @RequestMapping("account/updateaccount")
    public ModelAndView updateAccount(@ModelAttribute account cus) throws Exception {
        ModelAndView res=new ModelAndView("accountsearch");
        if( accountService.updateaccount(cus))
        {
            res.addObject("log","更新成功");
            res.addObject("tId",cus.getAcNum());
        }
        else
        {
            res.addObject("log","更新失败");
            res.addObject("tId",cus.getAcNum());
        }
        return res;
    }
    @RequestMapping("account/deleteaccount")
    public ModelAndView deleteSales(int acNum) throws Exception {
        ModelAndView res=new ModelAndView("accountsearch");
        if(accountService.deleteaccount(acNum))
        {
            res.addObject("log","删除成功");
            res.addObject("tId",acNum);
        }
        else
        {
            res.addObject("log","删除失败");
            res.addObject("tId",acNum);
        }
        return res;
    }

    @RequestMapping("account/deleteAll")
    public ModelAndView deleteAll(@RequestParam("param")String param) throws Exception {
        String str[]=param.split(",");
        ModelAndView res=new ModelAndView("accountsearch");
        if(accountService.deleteAll(str))
        {
            res.addObject("log","删除成功");
            res.addObject("tId",0);
        }
        else
        {
            res.addObject("log","删除失败");
            res.addObject("tId",0);
        }
        return res;
    }
}
