package com.chatRobot.service.aspect;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Cookbooks on 2018/2/6.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    private List<String> excludedUrls;

    public void setExcludeUrls(List<String> excludeUrls) {
        this.excludedUrls = excludeUrls;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestUri = request.getRequestURI();
        for (String url : excludedUrls) {
            if (requestUri.endsWith(url)) {
                return true;
            }
        }
        HttpSession session = request.getSession();
        try {
            if (session.getAttribute("user") == null) {
                throw new WebAuthException();
            }
        }
        catch(WebAuthException w){
            response.sendRedirect("viewN/loginout");
            return false;
        }
        return true;
    }
}
