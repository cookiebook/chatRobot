package com.chatRobot.model;

import java.util.Date;

public class account {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column account.ac_num
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    private Integer acNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column account.cNo
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    private Integer cno;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column account.password
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    private String password;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column account.money
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    private Double money;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column account.flag
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    private String flag;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column account.create_date
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    private Date createDate;

    private String sdate;

    public String getSdate() {
        return sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate;
    }
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column account.ac_num
     *
     * @return the value of account.ac_num
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public Integer getAcNum() {
        return acNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column account.ac_num
     *
     * @param acNum the value for account.ac_num
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public void setAcNum(Integer acNum) {
        this.acNum = acNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column account.cNo
     *
     * @return the value of account.cNo
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public Integer getCno() {
        return cno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column account.cNo
     *
     * @param cno the value for account.cNo
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public void setCno(Integer cno) {
        this.cno = cno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column account.password
     *
     * @return the value of account.password
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column account.password
     *
     * @param password the value for account.password
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column account.money
     *
     * @return the value of account.money
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public Double getMoney() {
        return money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column account.money
     *
     * @param money the value for account.money
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public void setMoney(Double money) {
        this.money = money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column account.flag
     *
     * @return the value of account.flag
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public String getFlag() {
        return flag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column account.flag
     *
     * @param flag the value for account.flag
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column account.create_date
     *
     * @return the value of account.create_date
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column account.create_date
     *
     * @param createDate the value for account.create_date
     *
     * @mbggenerated Mon Apr 16 18:14:42 CST 2018
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}