package com.chatRobot.dao;

import com.chatRobot.model.custom;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface customMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated Sun Apr 15 12:00:30 CST 2018
     */
    int deleteByPrimaryKey(Integer cNo);



    long getcustomCount(String param);
    List<custom> selectByPage(@Param("param")String param, @Param("startPos")int startPos, @Param("pageSize")int pageSize);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated Sun Apr 15 12:00:30 CST 2018
     */
    int insert(custom record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated Sun Apr 15 12:00:30 CST 2018
     */
    int insertSelective(custom record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated Sun Apr 15 12:00:30 CST 2018
     */
    custom selectByPrimaryKey(Integer cNo);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated Sun Apr 15 12:00:30 CST 2018
     */
    int updateByPrimaryKeySelective(custom record);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated Sun Apr 15 12:00:30 CST 2018
     */
    int updateByPrimaryKey(custom record);
}