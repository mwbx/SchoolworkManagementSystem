package com.ssm.dao;

import com.ssm.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper {
    List<Course> StudentOwnCourse(@Param("studentAccount") String studentAccount);
    Course selectCourseByKey(int CourseId);
}
