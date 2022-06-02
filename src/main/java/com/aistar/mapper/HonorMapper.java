package com.aistar.mapper;

import com.aistar.pojo.Honor;
import com.aistar.pojo.HonorExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HonorMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int countByExample(HonorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int deleteByExample(HonorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int deleteByPrimaryKey(Integer honorId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int insert(Honor record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int insertSelective(Honor record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    List<Honor> selectByExample(HonorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    Honor selectByPrimaryKey(Integer honorId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int updateByExampleSelective(@Param("record") Honor record, @Param("example") HonorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int updateByExample(@Param("record") Honor record, @Param("example") HonorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int updateByPrimaryKeySelective(Honor record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table honor
     *
     * @mbggenerated Wed Feb 26 09:56:38 CST 2020
     */
    int updateByPrimaryKey(Honor record);
}