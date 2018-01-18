package com.chatRobot.model;

import java.util.Date;

public class Log {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.L_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    private Integer lId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.S_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    private Integer sId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.type
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    private String type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.Date
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    private Date date;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.description
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.T_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    private Integer tId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.L_ID
     *
     * @return the value of log.L_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public Integer getlId() {
        return lId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.L_ID
     *
     * @param lId the value for log.L_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public void setlId(Integer lId) {
        this.lId = lId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.S_ID
     *
     * @return the value of log.S_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public Integer getsId() {
        return sId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.S_ID
     *
     * @param sId the value for log.S_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public void setsId(Integer sId) {
        this.sId = sId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.type
     *
     * @return the value of log.type
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.type
     *
     * @param type the value for log.type
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.Date
     *
     * @return the value of log.Date
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public Date getDate() {
        return date;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.Date
     *
     * @param date the value for log.Date
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.description
     *
     * @return the value of log.description
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.description
     *
     * @param description the value for log.description
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.T_ID
     *
     * @return the value of log.T_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public Integer gettId() {
        return tId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.T_ID
     *
     * @param tId the value for log.T_ID
     *
     * @mbggenerated Tue Jan 16 13:50:50 CST 2018
     */
    public void settId(Integer tId) {
        this.tId = tId;
    }
}