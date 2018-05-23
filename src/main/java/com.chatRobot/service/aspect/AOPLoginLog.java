package com.chatRobot.service.aspect;

import com.chatRobot.dao.LogMapper;
import com.chatRobot.model.Log;
import com.chatRobot.model.Sales;
import com.chatRobot.service.impl.LoginServiceImpl;
import com.chatRobot.tool.JudgeLogType;
import com.chatRobot.tool.RSA;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

public class AOPLoginLog {
    @Autowired
    private LogMapper dao;
    private Log log = new Log();

    @Resource(name="LoginService")
    private LoginServiceImpl loginService;


//RSA解密
    public Object RSAaround(ProceedingJoinPoint point) throws Throwable {
        Object arr[] = point.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String secret = request.getParameter("result");
        if(secret!=null) {
//            System.out.println("加密密文"+secret);
            String result = RSA.getKeyMap(secret);
//            System.out.println("解密结果："+result);
            arr[2] = result;
        }
        return point.proceed(arr);
    }

    public Object RSACookie(ProceedingJoinPoint point) throws Throwable {
        Object arr[] = point.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        Cookie[] cookies = request.getCookies();
        String email = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                if ("userCookie".equals(name)) {
                    email = cookie.getValue();
                }
            }
        }
        String result=null;
        if(email!=null)
            result = RSA.getKeyMap(email.toString());
        if(arr[2]==null)
            arr[2]=result;
        return point.proceed(arr);
    }



    public ModelAndView around(ProceedingJoinPoint point) throws Throwable {
        Object arr[] = point.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String url = request.getServletPath();
        log.setDate(new Date());
        log.setType(JudgeLogType.getType(url));
        log.setlId(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
        point.proceed();
        ModelAndView res= (ModelAndView) arr[1];
        Sales o = (Sales)res.getModel().get("User");
        if (o != null&&o.getsId()!=null) {
            String id=o.getsId().toString();
            log.setsId(Integer.parseInt(id));
            log.settId(id);
            log.setDescription("成功");
            dao.insert(log);
        }
        return res;
    }
    public ModelAndView Logaround(ProceedingJoinPoint point) throws Throwable {
        Object arr[] = point.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String url = request.getServletPath();
        url=JudgeLogType.getType(url);
        log.setDate(new Date());
        log.setType(url);
        log.setlId(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
        ModelAndView res = (ModelAndView) point.proceed();
        Sales sales = (Sales) request.getSession().getAttribute("user");
        String o = (String) res.getModel().get("log");
        String tId = res.getModel().get("tId").toString();
        if (sales != null && sales.getsId() != null) {
            String id = sales.getsId().toString();
            log.setsId(Integer.parseInt(id));
            log.settId(tId);
            log.setDescription(log.getsId()+"执行"+url+o);
            dao.insert(log);
        }
        return res;

    }

    public void afterReturningLog() {
//        HttpServletResponse response = ((ServletRequestAttributes) ResponseContextHolder.getRequestAttributes()).getRequest();
//        System.out.println("方法成功执行后通知 日志记录:");
//        int id=Integer.parseInt(request.getParameter("username"));
//        user.setDescription("登录成功");
//        user.setType("1");
//        user.setsId(id);
//        user.setlId(id);
//        dao.insert(user);
    }

//    public ModelAndView checkLogin(ProceedingJoinPoint point) throws Throwable {
//        ModelAndView res=new ModelAndView("redirect:/viewN/loginout");
//        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
//        Object email = request.getSession().getAttribute("user");
//        if(email==null&&(request.getServletPath().indexOf("loginout")<0)) {
//            return res;
//        }
//        res= (ModelAndView) point.proceed();
//        return res;
//    }


}
