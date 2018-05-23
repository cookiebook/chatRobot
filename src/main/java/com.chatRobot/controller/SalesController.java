package com.chatRobot.controller;

import com.chatRobot.model.Sales;
import com.chatRobot.service.impl.SalesServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;


/**
 * Created by Cookbooks on 2018/1/18.
 */
@Controller
public class SalesController {
    @Resource(name="SalesService")
    SalesServiceImpl salesService;
    @RequestMapping("view/addSales")
    public ModelAndView addsales(@ModelAttribute Sales sales) throws Exception {
        ModelAndView res=new ModelAndView("salessearch");
        if (!salesService.insertSales(sales)){
            res.addObject("log","添加失败");
            res.addObject("tId",sales.getsId());
            res.setViewName("redirect:/viewN/error");
        }
        else{
            res.addObject("log","添加成功");
            res.addObject("tId",sales.getsId());
        }
        return res;
    }

    @RequestMapping("view/updateself")
    public ModelAndView updateself(String sId) throws Exception {
        ModelAndView res=new ModelAndView("updateSales");
        Sales sales=new Sales();
        sales.setsId(Integer.parseInt(sId));
        sales=salesService.selByID(sales);
        if (sales.getPosition()==null){
            res.addObject("log","个人信息查找失败");
            res.addObject("tId",sId);
            res.setViewName("redirect:/viewN/error");
        }
        else{
            res.addObject("log","个人信息查找成功");
            res.addObject("tId",sId);
            res.addObject("sales",sales);
        }
        return res;
    }


    @RequestMapping("view/updateSales")
    public ModelAndView updateSales(@ModelAttribute Sales sales) throws Exception {
        ModelAndView res=new ModelAndView("salessearch");
        if(salesService.updateSales(sales))
        {
            res.addObject("log","更新成功");
            res.addObject("tId",sales.getsId());
        }
        else
        {
            res.addObject("log","更新失败");
            res.addObject("tId",sales.getsId());
        }
        return res;
    }
    @RequestMapping("view/deleteSales")
    public ModelAndView deleteSales(Integer sId) throws Exception {
        ModelAndView res=new ModelAndView("salessearch");

        if(salesService.deleteSales(sId))
        {
            res.addObject("log","删除成功");
            res.addObject("tId",sId);
        }
        else
        {
            res.addObject("log","删除失败");
            res.addObject("tId",sId);
        }
        return res;
    }

    @RequestMapping("sales/deleteAll")
    public ModelAndView deleteAll(String param) throws Exception {
        String str[]=param.split(",");
        ModelAndView res=new ModelAndView("salessearch");

        if(salesService.deleteAll(str))
        {
            res.addObject("log","成功");
            res.addObject("tId",0);
        }
        else
        {
            res.addObject("log","失败");
            res.addObject("tId",0);
        }

        return res;
    }
}
