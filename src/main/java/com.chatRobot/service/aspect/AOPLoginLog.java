package com.chatRobot.service.aspect;

import com.chatRobot.dao.LogMapper;
import com.chatRobot.model.Log;
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
    private Log user = new Log();

    @Resource(name="LoginService")
    private LoginServiceImpl loginService;
// 登录日志
    public ModelAndView around(ProceedingJoinPoint point) throws Throwable {
        Object arr[] = point.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String url = request.getServletPath();
        user.setDate(new Date());
        user.setType(JudgeLogType.getType(url));
        user.setlId(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
        ModelAndView res = (ModelAndView) point.proceed(arr);
        Object o = res.getModel().get("username");
        if (o != null) {
            String id=o.toString();
            user.setsId(Integer.parseInt(id));
            user.settId(Integer.parseInt(id));
            user.setDescription("登录成功");
            dao.insert(user);
        }
        return res;
    }
//RSA解密
    public Object RSAaround(ProceedingJoinPoint point) throws Throwable {
        Object arr[] = point.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
//        ServletWebRequest servletWebRequest=new ServletWebRequest(request);
//        HttpServletResponse response=servletWebRequest.getResponse();
        String secret = request.getParameter("result");
        if(secret!=null) {
            String result = RSA.getKeyMap(secret);
            arr[2] = result;
        }
        return point.proceed(arr);
    }

    public Object RSACookie(ProceedingJoinPoint point) throws Throwable {
        ModelAndView res=new ModelAndView("login");
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        Cookie[] cookies = request.getCookies();
        String email = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                if ("user".equals(name)) {
                    email = cookie.getValue();
                }
            }
        }
        if(email==null)
            return res;
            String result = RSA.getKeyMap(email.toString());
        res= (ModelAndView) point.proceed();

        loginService.Login(res,result);
        return res;
    }

    public void afterReturningLog() {
//        HttpServletResponse response = ((ServletRequestAttributes) ResponseContextHolder.getRequestAttributes()).getRequest();
        System.out.println("方法成功执行后通知 日志记录:");
//        int id=Integer.parseInt(request.getParameter("username"));
//        user.setDescription("登录成功");
//        user.setType("1");
//        user.setsId(id);
//        user.setlId(id);
//        dao.insert(user);
    }

}
