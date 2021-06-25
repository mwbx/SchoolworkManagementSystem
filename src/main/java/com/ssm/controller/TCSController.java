package com.ssm.controller;

import com.ssm.pojo.Course;
import com.ssm.service.TCSService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/TCS")
public class TCSController {
    @Autowired
    private TCSService tcsService;
    //老师查询自己的课程
    @RequestMapping("selectMyCourse")
    public String selectMyCourse(String teacherAccount, Model model)
    {
        List<Course> courses = tcsService.selectMyCourse(teacherAccount);
        model.addAttribute("courses",courses);
        return "teacher/myCourse";
    }
}
