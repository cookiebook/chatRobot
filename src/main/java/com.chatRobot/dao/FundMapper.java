package com.chatRobot.dao;

import com.chatRobot.model.Fund;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FundMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fund
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    int deleteByPrimaryKey(Integer fNo);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fund
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    int insert(Fund record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fund
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    int insertSelective(Fund record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fund
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    Fund selectByPrimaryKey(String fNo);
    long getFundCount(@Param("acNum")int acNum,@Param("param")String param);
    List<Fund> selectByPage(@Param("acNum")int acNum,@Param("param")String param, @Param("startPos")int startPos, @Param("pageSize")int pageSize);


    List<Fund> selectAll();
    Float selectPrice(String fNo);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fund
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    int updateByPrimaryKeySelective(Fund record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fund
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    int updateByPrimaryKey(Fund record);
}