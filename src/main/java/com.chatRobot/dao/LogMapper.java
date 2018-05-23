package com.chatRobot.dao;

import com.chatRobot.model.Log;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    long getCount();
    List<Log> getAll(@Param("startPos")int startPos, @Param("pageSize")int pageSize);

    long getLogCount(int acNum);
    List<Log> selectByPage(@Param("acNum")int acNum, @Param("startPos")int startPos, @Param("pageSize")int pageSize);

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