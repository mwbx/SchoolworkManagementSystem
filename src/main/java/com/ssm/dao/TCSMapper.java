package com.ssm.dao;

import com.ssm.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TCSMapper {
//    老师查询的自己的课程
    List<Course> selectMyCourse(@Param("teacherAccount") String teacherAccount);
}
