package com.chatRobot.controller;

import com.chatRobot.model.*;
import com.chatRobot.service.impl.*;
import com.chatRobot.tool.TimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.List;


/**
 * Created by Cookbooks on 2018/1/18.
 */
@Controller
public class defauctPage {
    @Resource(name="customService")
    customServiceImpl customService;
    @RequestMapping(value = "custom/myProductPage", method = RequestMethod.GET)//get
    public @ResponseBody  List<custom> showMyProduct(HttpServletRequest request, @RequestParam("page") int page ) throws ParseException {
        String result=(String)request.getSession().getAttribute("param");
        int size=10;
        if(result==null)
            result="";
        List<custom> res=customService.searchByPage(result,page,size);
        for(int i=0;i<res.size();i++) {
            res.get(i).setSdate(TimeFormat.Timeformat(res.get(i).getCreatedDate(),"yyyy-MM-dd"));
        }
        return res;
    }

    @RequestMapping(value="custom/searchCount", method = RequestMethod.GET)
    public @ResponseBody long searchCount(HttpServletRequest request,@RequestParam("page")String param){
        long res;
        if(" ".equals(param))
            param="";
        res=customService.searchCount(param);
        if(res>0)
            request.getSession().setAttribute("param",param);
        return res;

    }



    @Resource(name="SalesService")
    SalesServiceImpl salesService;
    @RequestMapping(value = "sales/myProductPage", method = RequestMethod.GET)//get
    public @ResponseBody  List<Sales> showMyProduct1(HttpServletRequest request,@RequestParam("page") int page ) throws ParseException {
        String result=(String)request.getSession().getAttribute("param");
        int size=10;
        if(result==null)
            result="";
        List<Sales> res=salesService.searchByPage(result,page,size);
        for(int i=0;i<res.size();i++) {
            res.get(i).setSdate(TimeFormat.Timeformat(res.get(i).getCreatedData(),"yyyy-MM-dd"));
        }
        return res;
    }



    @RequestMapping(value="sales/searchCount", method = RequestMethod.GET)
    public @ResponseBody long searchCount1(HttpServletRequest request,@RequestParam("page")String param){
        if(" ".equals(param))
            param="";
        long res;
        res=salesService.searchCount(param);

        if(res>0)
            request.getSession().setAttribute("param",param);
        return res;

    }


    @Resource(name="accountService")
    accountServiceImpl accountService;
    @RequestMapping(value = "account/myProductPage", method = RequestMethod.GET)//get
    public @ResponseBody  List<account> showMyProduct2(HttpServletRequest request, @RequestParam("page") int page ) throws ParseException {
        String result=(String)request.getSession().getAttribute("param");
        int size=10;
        if(result==null)
            result="";
        List<account> res=accountService.searchByPage(result,page,size);
        for(int i=0;i<res.size();i++) {
            res.get(i).setSdate(TimeFormat.Timeformat(res.get(i).getCreateDate(),"yyyy-MM-dd"));
        }
        return res;
    }

    @RequestMapping(value = "account/selectById", method = RequestMethod.GET)//get
    public @ResponseBody  List<account> showAccount(HttpServletRequest request, @RequestParam("page") int page ) throws ParseException {
        List<account> res=accountService.searchById(page);
        for(int i=0;i<res.size();i++) {
            res.get(i).setSdate(TimeFormat.Timeformat(res.get(i).getCreateDate(),"yyyy-MM-dd"));
        }
        return res;
    }



    @RequestMapping(value="account/searchCount", method = RequestMethod.GET)
    public @ResponseBody long searchCount2(HttpServletRequest request,@RequestParam("page")String param){
        long res;
        if(" ".equals(param))
            param="";
        res=accountService.searchCount(param);
        if(res>0)
            request.getSession().setAttribute("param",param);
        return res;

    }


    @Resource(name="FundService")
    FundServiceImpl fundService;
    @RequestMapping(value = "Fund/myProductPage", method = RequestMethod.GET)//get
    public @ResponseBody  List<Fund> showMyProduct3(HttpServletRequest request,@RequestParam("page") int page ) throws ParseException {
        String result=(String)request.getSession().getAttribute("param");
        int size=10;
        if(result==null)
            result="";
        List<Fund> res= fundService.searchByPage(result,page,size);
        for(int i=0;i<res.size();i++) {
            res.get(i).setSdate(TimeFormat.Timeformat(res.get(i).getCreatedDate(),"yyyy-MM-dd"));
        }
//        res=fundService.updateByInterface(res);
        return res;
    }



    @RequestMapping(value="Fund/searchCount", method = RequestMethod.GET)
    public @ResponseBody long searchCount3(HttpServletRequest request,@RequestParam("page")String param){
        long res;
        if(" ".equals(param))
            param="";
        res=fundService.searchCount(param);
        if(res>0)
            request.getSession().setAttribute("param",param);
        return res;

    }


    @Resource(name="LogService")
    LogServiceImpl LogService;
    @RequestMapping(value = "Log/myProductPage", method = RequestMethod.GET)//get
    public @ResponseBody  List<Log> showMyProduct4(HttpServletRequest request, @RequestParam("page") int page ) throws ParseException {
        String result=(String)request.getSession().getAttribute("param");
        int size=10;
        if(result==null)
            result="";
        List<Log> res=LogService.searchByPage(result,page,size);
        for(int i=0;i<res.size();i++) {
            res.get(i).setSdate(TimeFormat.Timeformat(res.get(i).getDate(),"yyyy-MM-dd"));
        }
        return res;
    }



    @RequestMapping(value="Log/searchCount", method = RequestMethod.GET)
    public @ResponseBody long searchCount4(HttpServletRequest request,@RequestParam("page")String param){
        long res;
        if(" ".equals(param))
            param="";
        res=LogService.searchCount(param);
        if(res>0)
            request.getSession().setAttribute("param",param);
        return res;

    }



    @Resource(name="fundaccountService")
    fundaccountServiceImpl fundaccountService;
    @RequestMapping(value = "fundaccount/myProductPage", method = RequestMethod.GET)//get
    public @ResponseBody  List<fundaccount> showMyProduct5(HttpServletRequest request, @RequestParam("page") int page ) {
        String result = (String) request.getSession().getAttribute("param");
        int size = 10;
        if (result == null)
            result = "";
        List<fundaccount> res = fundaccountService.searchByPage(result, page, size);
        for(int i=0;i<res.size();i++){
            res.get(i).setPrice(res.get(i).getCount()*fundService.searchById(res.get(i).getfNo()).getPrice());
        }
        return res;
    }



    @RequestMapping(value="fundaccount/searchCount", method = RequestMethod.GET)
    public @ResponseBody long searchCount5(HttpServletRequest request,@RequestParam("page")String param){
        long res;
        if(" ".equals(param))
            param="";
        res=fundaccountService.searchCount(param);
        if(res>0)
            request.getSession().setAttribute("param",param);
        return res;

    }








}
