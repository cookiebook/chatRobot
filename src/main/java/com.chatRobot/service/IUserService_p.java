package com.chatRobot.service;

import com.chatRobot.model.User_p;
        import org.springframework.web.servlet.ModelAndView;

        import javax.servlet.http.HttpServletRequest;
        import java.util.List;

public interface IUserService_p {
    //    @Select("select * from user_p")
//    public List<User_p> selectAll();
//
    public User_p selectByPrimaryKey(Integer id);
    public void insertUser(List<User_p> users);
    List<User_p> selectbypassword(String password);
    void showProductsByPage(HttpServletRequest request, ModelAndView model, String loginUserId);
}