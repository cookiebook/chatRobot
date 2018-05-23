package com.chatRobot.controller;

import com.chatRobot.model.Log;
import com.chatRobot.service.impl.LogServiceImpl;
import com.chatRobot.tool.FileStream;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;


/**
 * Created by Cookbooks on 2018/1/18.
 */
@Controller
public class LogController {
    @Resource(name="LogService")
    LogServiceImpl LogService;

    @RequestMapping("Log/backup")
    public ModelAndView backup(HttpServletRequest request) throws Exception{
        ModelAndView res=new ModelAndView("Logsearch");
        String param=(String)request.getSession().getAttribute("param");
        if(param==null)param="ALL";
        int size=(int)LogService.searchCount(param);
        List<Log> list=LogService.searchByPage(param,1,size);
        if(list.size()!=0)
        {
            FileStream.charOutStream("F:" + File.separator + "log" + File.separator +""+param+".txt",list);
            res.addObject("log","备份成功");
            res.addObject("tId",0);
        }
        else
        {
            res.addObject("log","备份失败");
            res.addObject("tId",0);
        }
        return res;
    }
//    @RequestMapping("Log/insertLog")
//    public ModelAndView addLog(@ModelAttribute Log cus) throws Exception {
//        ModelAndView res=new ModelAndView("Logsearch");
//        if (!LogService.insertLog(cus)){
//            res.setViewName("error");
//        }
//        return res;
//    }

//    @RequestMapping("Log/updateLog")
//    public ModelAndView updateLog(@ModelAttribute Log cus) throws Exception {
//        ModelAndView res=new ModelAndView("Logsearch");
//        LogService.updateLog(cus);
//        return res;
//    }
    @RequestMapping("Log/deleteLog")
    public ModelAndView deleteSales(int acNum) throws Exception {
        ModelAndView res=new ModelAndView("Logsearch");
        if(LogService.deleteLog(acNum))
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

    @RequestMapping("Log/deleteAll")
    public ModelAndView deleteAll(@RequestParam("param")String param) throws Exception {
        String str[]=param.split(",");
        ModelAndView res=new ModelAndView("Logsearch");
        if(LogService.deleteAll(str))
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
