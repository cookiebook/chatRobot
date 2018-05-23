package com.chatRobot.model;

import java.util.Date;

public class Fund {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.F_NO
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private String fNo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.F_NAME
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private String fName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.type
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private String type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.PRICE
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private Float price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.COMPANY
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private String company;
    private String state;



    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.DESCRIPTION
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column fund.CREATED_DATE
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    private Date createdDate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.F_NO
     *
     * @return the value of fund.F_NO
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public String getfNo() {
        return fNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.F_NO
     *
     * @param fNo the value for fund.F_NO
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setfNo(String fNo) {
        this.fNo = fNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.F_NAME
     *
     * @return the value of fund.F_NAME
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public String getfName() {
        return fName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.F_NAME
     *
     * @param fName the value for fund.F_NAME
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setfName(String fName) {
        this.fName = fName == null ? null : fName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.type
     *
     * @return the value of fund.type
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.type
     *
     * @param type the value for fund.type
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.PRICE
     *
     * @return the value of fund.PRICE
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public Float getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.PRICE
     *
     * @param price the value for fund.PRICE
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setPrice(Float price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.COMPANY
     *
     * @return the value of fund.COMPANY
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public String getCompany() {
        return company;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.COMPANY
     *
     * @param company the value for fund.COMPANY
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.DESCRIPTION
     *
     * @return the value of fund.DESCRIPTION
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.DESCRIPTION
     *
     * @param description the value for fund.DESCRIPTION
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column fund.CREATED_DATE
     *
     * @return the value of fund.CREATED_DATE
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public Date getCreatedDate() {
        return createdDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column fund.CREATED_DATE
     *
     * @param createdDate the value for fund.CREATED_DATE
     *
     * @mbggenerated Tue Apr 17 12:12:25 CST 2018
     */
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    private String fund_Rate;
    private String fund_minsg;
    private String syl_1n;
    private String syl_6y;
    private String syl_3y;
    private String syl_1y;
    private String sdate;

    public String getSdate() {
        return sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate;
    }

    public String getFund_minsg() {
        return fund_minsg;
    }

    public void setFund_minsg(String fund_minsg) {
        this.fund_minsg = fund_minsg;
    }

    public String getSyl_1n() {
        return syl_1n;
    }

    public void setSyl_1n(String syl_1n) {
        this.syl_1n = syl_1n;
    }

    public String getSyl_6y() {
        return syl_6y;
    }

    public void setSyl_6y(String syl_6y) {
        this.syl_6y = syl_6y;
    }

    public String getSyl_3y() {
        return syl_3y;
    }

    public void setSyl_3y(String syl_3y) {
        this.syl_3y = syl_3y;
    }

    public String getSyl_1y() {
        return syl_1y;
    }

    public void setSyl_1y(String syl_1y) {
        this.syl_1y = syl_1y;
    }

    public String getFund_Rate() {
        return fund_Rate;
    }

    public void setFund_Rate(String fund_Rate) {
        this.fund_Rate = fund_Rate;
    }
}