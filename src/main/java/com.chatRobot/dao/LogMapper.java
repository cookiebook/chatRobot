package com.chatRobot.dao;

import com.chatRobot.model.Log;

public interface LogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    int deleteByPrimaryKey(Integer lId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    int insert(Log record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    int insertSelective(Log record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    Log selectByPrimaryKey(Integer lId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    int updateByPrimaryKeySelective(Log record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    int updateByPrimaryKey(Log record);
}