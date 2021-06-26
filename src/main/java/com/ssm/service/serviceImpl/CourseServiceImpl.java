package com.ssm.service.serviceImpl;

import com.ssm.dao.CourseMapper;
import com.ssm.pojo.Course;
import com.ssm.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseMapper courseMapper;
    @Override
    public List<Course> StudentOwnCourse(String studentAccount) {
        return courseMapper.StudentOwnCourse(studentAccount);
    }

    @Override
    public Course selectCourseByKey(int courseId) {
        return courseMapper.selectCourseByKey(courseId);
    }
}
