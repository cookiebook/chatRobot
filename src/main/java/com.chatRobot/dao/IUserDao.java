package com.chatRobot.dao;

import com.chatRobot.model.User;

public interface IUserDao {

    User selectUser(long id);

    /**
     * 事务处理必须抛出异常，Spring才会帮助事务回滚
     * @param users
     */

}
