package com.ssm.service;

import com.ssm.pojo.Course;

import java.util.List;

public interface CourseService {
    List<Course> StudentOwnCourse(String studentAccount);
    Course selectCourseByKey(int courseId);

}
