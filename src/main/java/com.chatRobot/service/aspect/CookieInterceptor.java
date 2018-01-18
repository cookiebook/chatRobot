package com.chatRobot.service.aspect;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Created by Cookbooks on 2018/1/17.
 */
public class CookieInterceptor implements HandlerInterceptor {
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
throws Exception
    {
// TODO Auto-generated method stub
  }


    @Override
  

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)
      throws Exception

    {
    // TODO Auto-generated method stub

  }

  
    @Override
  

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
    String url = request.getRequestURI();

    //如果拦截到的是登录的页面的话放行
//    if (url.indexOf("login.do") >= 0 || url.indexOf("checkadmin.do") >= 0) {
//      return true;
//    }
//    //如果是其他请求地址，进行拦截
//    AdminBean admin = (AdminBean) request.getSession().getAttribute("admin");
//    if (admin != null) {
//      String sessionid = MemoryData.getSessionIDMap().get(admin.getUsername());
//
//      //如果用户名存在放心（即登录放行）
//
//      if (sessionid.equals(request.getSession().getId())) {
//        return true;
//      } else { //如果请求的sessionID和此账号Map中存放的sessionID不一致，跳转到登陆页
//
//        //判断如果是异步请求，设置响应头 sessionstatus为timeout，自动跳转，否则重定向
//        if (request.getHeader("x-requested-with") != null
//            &&request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){
//          response.setHeader("sessionstatus", "timeout");
//          return false;
//        }else{
//          String indexurl = request.getContextPath() + "/login.do";
//          response.sendRedirect(indexurl);
//          return false;
//        }
//      }
//    }
//
//    //如果session中没有admin，跳转到登陆页
//    request.getRequestDispatcher(request.getContextPath() + "/index.do").forward(request, response);
    return true;
  }
}
