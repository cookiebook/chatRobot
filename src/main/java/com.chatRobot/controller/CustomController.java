package com.chatRobot.controller;

import com.chatRobot.model.custom;
import com.chatRobot.service.impl.customServiceImpl;
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
public class CustomController {
    @Resource(name="customService")
    customServiceImpl customService;
    @RequestMapping("custom/addcustom")
    public ModelAndView addsales(@ModelAttribute custom cus) throws Exception {
        ModelAndView res=new ModelAndView("customsearch");
        if (!customService.insertcustom(cus)){
            res.addObject("log","添加失败");
            res.addObject("tId",cus.getcNo());
            res.setViewName("redirect:/viewN/error");
        }
        else{
            res.addObject("log","添加成功");
            res.addObject("tId",cus.getcNo());
        }
        return res;
    }

    @RequestMapping("custom/updatecustom")
    public ModelAndView updateSales(@ModelAttribute custom cus) throws Exception {
        ModelAndView res=new ModelAndView("customsearch");
        if(customService.updatecustom(cus))
        {
            res.addObject("log","更新成功");
            res.addObject("tId",cus.getcNo());
        }
        else
        {
            res.addObject("log","更新失败");
            res.addObject("tId",cus.getcNo());
        }
        return res;
    }
    @RequestMapping("custom/deletecustom")
    public ModelAndView deleteSales(Integer cNo) throws Exception {
        ModelAndView res=new ModelAndView("customsearch");
        if(customService.deletecustom(cNo))
        {
            res.addObject("log","删除成功");
            res.addObject("tId",cNo);
        }
        else
        {
            res.addObject("log","删除失败");
            res.addObject("tId",cNo);
        }
        return res;
    }

    @RequestMapping("custom/deleteAll")
    public ModelAndView deleteAll(@RequestParam("param")String param) throws Exception {
        String str[]=param.split(",");
        ModelAndView res=new ModelAndView("customsearch");
        if(customService.deleteAll(str))
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
