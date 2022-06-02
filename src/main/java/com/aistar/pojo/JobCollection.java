package com.aistar.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class JobCollection implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.job_collection_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private Integer jobCollectionId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.cust_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private Integer custId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.job_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private Integer jobId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.collect_time
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    @DateTimeFormat(pattern="YYYY-MM-dd")
    private Date collectTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.status
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private String status;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.other1
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private String other1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column job_collection.other2
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private String other2;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table job_collection
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.job_collection_id
     *
     * @return the value of job_collection.job_collection_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public Integer getJobCollectionId() {
        return jobCollectionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.job_collection_id
     *
     * @param jobCollectionId the value for job_collection.job_collection_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setJobCollectionId(Integer jobCollectionId) {
        this.jobCollectionId = jobCollectionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.cust_id
     *
     * @return the value of job_collection.cust_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public Integer getCustId() {
        return custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.cust_id
     *
     * @param custId the value for job_collection.cust_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setCustId(Integer custId) {
        this.custId = custId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.job_id
     *
     * @return the value of job_collection.job_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public Integer getJobId() {
        return jobId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.job_id
     *
     * @param jobId the value for job_collection.job_id
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.collect_time
     *
     * @return the value of job_collection.collect_time
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public Date getCollectTime() {
        return collectTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.collect_time
     *
     * @param collectTime the value for job_collection.collect_time
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setCollectTime(Date collectTime) {
        this.collectTime = collectTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.status
     *
     * @return the value of job_collection.status
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.status
     *
     * @param status the value for job_collection.status
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.other1
     *
     * @return the value of job_collection.other1
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public String getOther1() {
        return other1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.other1
     *
     * @param other1 the value for job_collection.other1
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setOther1(String other1) {
        this.other1 = other1 == null ? null : other1.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column job_collection.other2
     *
     * @return the value of job_collection.other2
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public String getOther2() {
        return other2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column job_collection.other2
     *
     * @param other2 the value for job_collection.other2
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    public void setOther2(String other2) {
        this.other2 = other2 == null ? null : other2.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table job_collection
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", jobCollectionId=").append(jobCollectionId);
        sb.append(", custId=").append(custId);
        sb.append(", jobId=").append(jobId);
        sb.append(", collectTime=").append(collectTime);
        sb.append(", status=").append(status);
        sb.append(", other1=").append(other1);
        sb.append(", other2=").append(other2);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}