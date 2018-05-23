package com.chatRobot.controller;

import com.chatRobot.model.Fund;
import com.chatRobot.model.fundaccount;
import com.chatRobot.service.impl.FundServiceImpl;
import com.chatRobot.service.impl.fundaccountServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Cookbooks on 2018/4/24.
 */
@Controller
public class view {
    @Resource(name="FundService")
    FundServiceImpl fundService;
    @Resource(name="fundaccountService")
    fundaccountServiceImpl facService;
    @RequestMapping("view/go")
    public ModelAndView addaccount(String url) throws Exception{
        return new ModelAndView(url);
    }

    @RequestMapping("viewN/go")
    public ModelAndView addaccount1(String url) throws Exception{
        return new ModelAndView(url);
    }

    @RequestMapping("Fund/BuyFund")
    public ModelAndView searchFund(String fNo,int cno,float money) throws Exception {
        ModelAndView res=new ModelAndView("BuyFund");
        Fund fund=fundService.searchById(fNo);
        if(fund==null) {
            res.addObject("log","该基金不存在");
            res.addObject("tId",fNo);
            res.setViewName("redirect:/viewN/error");
        }
        else {
            res.addObject("fund", fund);
            res.addObject("money",money);
            res.addObject("cno",cno);
        }
        return res;
    }


    @RequestMapping("Fund/FundSell")
    public ModelAndView searchfundaccount(HttpServletRequest request,int fNo) throws Exception {
        ModelAndView res=new ModelAndView("SellFund");
        fundaccount fac= facService.selectById(fNo);
        Fund fund=fundService.searchById(fac.getfNo());
        if(fac==null) {
            res.addObject("log","该账户不存在");
            res.addObject("tId",fNo);
            res.setViewName("redirect:/viewN/error");
        }
        else
            request.getSession().setAttribute("fundaccount",fac);
        if(fund==null) {
            res.addObject("log", "该账户不存在");
            res.addObject("tId", fNo);
            res.setViewName("redirect:/viewN/error");
            request.getSession().setAttribute("price","");
        }
        else
            request.getSession().setAttribute("price",fund.getPrice());
        return res;
    }

}
