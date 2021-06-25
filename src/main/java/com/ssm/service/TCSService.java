package com.ssm.service;

import com.ssm.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TCSService {
    //    老师查询的自己的课程
    List<Course> selectMyCourse(String teacherAccount);
}
