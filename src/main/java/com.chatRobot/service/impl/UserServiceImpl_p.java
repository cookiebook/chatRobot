package com.chatRobot.service.impl;

import com.chatRobot.dao.UserMapper;
import com.chatRobot.model.User_p;
import com.chatRobot.service.IUserService_p;
import com.chatRobot.tool.Page;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service("IUserService")
public class UserServiceImpl_p implements IUserService_p {

    @Resource
    private UserMapper userDao;


    public User_p selectByPrimaryKey(Integer id) {
        User_p student=userDao.selectByPrimaryKey(id);
        return student;
    }

    public List<User_p> selectbypassword(String password){
        List<User_p> res=userDao.selectbypassword(password);
        return res;
    }


    @Transactional
    public void insertUser(List<User_p> users) {
        // TODO Auto-generated method stub
        for (int i = 0; i < users.size(); i++) {
            if(i<2){
                this.userDao.insert(users.get(i));
            }
            else {
                throw new RuntimeException();
            }
        }
    }



    @Override
    public void showProductsByPage(HttpServletRequest request, ModelAndView model, String loginUserId) {
        String pageNow = request.getParameter("pageNow");
        Page page = null;
        List<User_p> user_pList;
        int totalCount = (int) userDao.getProductsCount(loginUserId);
        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow));
            user_pList = this.userDao.selectProductsByPage(page.getStartPos(), page.getPageSize(), loginUserId);
        } else {
            page = new Page(totalCount, 1);
            user_pList = this.userDao.selectProductsByPage(page.getStartPos(), page.getPageSize(), loginUserId);
        }
        System.out.print(user_pList.get(0).getId());
        model.addObject("products", user_pList);
        model.addObject("page", page);
        model.addObject("name","zzx");
//        model.addAttribute();
//        model.addAttribute("page", page);
    }

}