package com.ssm.controller;

import com.ssm.pojo.Student;
import com.ssm.pojo.Teacher;
import com.ssm.service.StudentService;
import com.ssm.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Teacher")
public class TeacherController {
    @Autowired
    private TeacherService teacherService;
    //查询全部书籍并展现的jsp
    @RequestMapping("/allTeacher")
    public String listTeacher(Model model)
    {
        List<Teacher> list = teacherService.queryAllTeacher();
        model.addAttribute("list",list);
        return "teacher/allTeacher";
    }

    //新增学生跳转页面
    @RequestMapping("toAddTeacherPage")
    public String toAddTeacherPage()
    {
        return "teacher/addTeacher";
    }
    //新增学生
    @RequestMapping("addTeacher")
    public String addTeacher(Teacher teacher)
    {
        teacherService.addTeacher(teacher);
        return "redirect:/Teacher/allTeacher";
    }
    //修改学生跳转页面
    @RequestMapping("toUpdateTeacherPage")
    public String toUpdateTeacher(int teacherId,Model model)
    {
        Teacher teacher = teacherService.queryTeacherById(teacherId);
        model.addAttribute("QTeacher",teacher);
        return "teacher/updateTeacher";
    }
    //更新学生
    @RequestMapping("updateTeacher")
    public String updateTeacher(Teacher teacher)
    {
        teacherService.updateTeacher(teacher);
        return "redirect:/Teacher/allTeacher";
    }
    //删除学生
    @RequestMapping("deleteTeacher")
    public String deleteTeacher(int teacherId)
    {
        teacherService.deleteTeacherById(teacherId);
        return "redirect:/Teacher/allTeacher";
    }
    //新增查询学生
    @RequestMapping("selectTeacher")
    public String selectTeacher(String queryTeacherName,Model model)
    {
        if (queryTeacherName.length()==0)
        {
            return "redirect:/Teacher/allTeacher";
        }
        else
        {
            List<Teacher> list=teacherService.selectTeacherByName(queryTeacherName);
            model.addAttribute("list",list);
        }
        return "teacher/allTeacher";
    }
}
