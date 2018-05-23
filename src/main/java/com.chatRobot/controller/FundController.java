package com.chatRobot.controller;

import com.chatRobot.model.Fund;
import com.chatRobot.service.impl.FundServiceImpl;
import com.chatRobot.service.impl.fundaccountServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;


/**
 * Created by Cookbooks on 2018/1/18.
 */
@Controller
public class FundController {
    @Resource(name="FundService")
    FundServiceImpl fundService;
    @Resource(name="fundaccountService")
    fundaccountServiceImpl facService;
    @RequestMapping("Fund/BFund")
    public ModelAndView buy(HttpServletRequest request, HttpServletResponse response, String result)throws Exception {
        ModelAndView res;
        res=fundService.buyFund(result);
        return res;
    }


    @RequestMapping("view/update")
    public ModelAndView update() throws Exception {
        ModelAndView model;
        if(fundService.updateAll()) {
            model=new ModelAndView("index");
            model.addObject("log", "数据库更新成功");
            model.addObject("tId", 0);
        }
        else
        {
            model=new ModelAndView("viewN/error");
            model.addObject("log", "数据库更新失败");
            model.addObject("tId", 0);
        }
        return model;
    }
    @RequestMapping("view/recommend")
    public List<Fund> recommend() throws Exception {
        List<Fund> list;
        list=fundService.searchByPage("",1,8);
        for(int i=0;i<list.size();i++) {
            fundService.updateByInterface(list.get(i));
            SimpleDateFormat sdf1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
            SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
            list.get(i).setSdate(sdf2.format(sdf1.parse(list.get(i).getCreatedDate().toString())));
        }
        return list;
    }

    @RequestMapping("Fund/insertFund")
    public ModelAndView addFund(@ModelAttribute Fund cus,String Date) throws Exception {
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(Date);
        cus.setCreatedDate(date);
        ModelAndView res=new ModelAndView("Fundsearch");
        if (!fundService.insertFund(cus)){
            res.addObject("log","添加失败");
            res.addObject("tId",cus.getfNo());
            res.setViewName("redirect:/viewN/error");
        }
        else {
            res.addObject("log", "添加成功");
            res.addObject("tId", cus.getfNo());
        }
        return res;
    }

    @RequestMapping("Fund/FundDetail")
    public ModelAndView FundDetail(String fNo) throws Exception {
        ModelAndView res=new ModelAndView("FundDetail");
        Fund fund=fundService.searchById(fNo);
        if (fund!=null){
            res.addObject("log","查询详细成功");
            res.addObject("tId", Integer.parseInt(fNo));
            res.addObject("fund",fund);
            res.addObject("fNo",fNo);
        }
        else {
            res.addObject("log","查询详细失败");
            res.addObject("tId",Integer.parseInt(fNo));
            res.setViewName("redirect:/viewN/error");
        }
        fundService.updateByInterface(fund);
        SimpleDateFormat sdf1= new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
        SimpleDateFormat sdf2= new SimpleDateFormat("yyyy-MM-dd");
        fund.setSdate(sdf2.format(sdf1.parse(fund.getCreatedDate().toString())));
        return res;
    }
    @RequestMapping("Fund/updateFund")
    public ModelAndView updateFund(@ModelAttribute Fund cus) throws Exception {
        ModelAndView res=new ModelAndView("Fundsearch");
        if(fundService.updateFund(cus))
        {
            res.addObject("log","更新成功");
            res.addObject("tId",cus.getfNo());
        }
        else
        {
            res.addObject("log","更新失败");
            res.addObject("tId",cus.getfNo());
        }
        return res;
    }
    @RequestMapping("Fund/deleteFund")
    public ModelAndView deleteSales(int acNum) throws Exception {
        ModelAndView res=new ModelAndView("Fundsearch");
        if(fundService.deleteFund(acNum))
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

    @RequestMapping("Fund/deleteAll")
    public ModelAndView deleteAll(@RequestParam("param")String param) throws Exception {
        String str[]=param.split(",");
        ModelAndView res=new ModelAndView("Fundsearch");
        if(fundService.deleteAll(str))
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
