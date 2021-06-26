package com.ssm.controller;

import com.ssm.pojo.Course;
import com.ssm.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Course")
public class CourseController {
    @Autowired
    private CourseService courseService;
    //学生查看课程
    @RequestMapping("StudentOwnCourse")
    public String StudentOwnCourse(String studentAccount, Model model)
    {
        List<Course> courses= courseService.StudentOwnCourse(studentAccount);
        model.addAttribute("courses",courses);
        return "student/myCourse";
    }
}
