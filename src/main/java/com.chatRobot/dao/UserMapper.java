package com.chatRobot.dao;

import com.chatRobot.model.User_p;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_p
     *
     * @mbggenerated Thu Jan 04 15:28:26 CST 2018
     */
    int deleteByPrimaryKey(Integer id);



    int selectAll(String passsword);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_p
     *
     * @mbggenerated Thu Jan 04 15:28:26 CST 2018
     */
    int insert(User_p record);


    //分页
    @Select("select * from user_p where password=#{userId} limit #{startPos},#{pageSize}")
    public List<User_p> selectProductsByPage(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param(value="userId") String userId);


    @Select("select count(*) from user_p where password=#{userId}")
    public long getProductsCount(@Param(value="userId") String userId);


    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_p
     *
     * @mbggenerated Thu Jan 04 15:28:26 CST 2018
     */
    int insertSelective(User_p record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_p
     *
     * @mbggenerated Thu Jan 04 15:28:26 CST 2018
     */
//    @Select("select * from user_p where id=#{id}")
    User_p selectByPrimaryKey(int id);

    @Select("select * from user_p where password=#{password}")
    List<User_p> selectbypassword(String password);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_p
     *
     * @mbggenerated Thu Jan 04 15:28:26 CST 2018
     */
    int updateByPrimaryKeySelective(User_p record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_p
     *
     * @mbggenerated Thu Jan 04 15:28:26 CST 2018
     */
    int updateByPrimaryKey(User_p record);
}