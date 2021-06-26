package com.ssm.controller;

import com.ssm.pojo.Student;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Student")
public class StudentController {
    @Autowired
    @Qualifier("studentServiceImpl")
    private StudentService studentService;
    //查询全部书籍并展现的jsp
    @RequestMapping("/allStudent")
    public String listStudent(Model model)
    {
        List<Student> list = studentService.queryAllStudent();
        model.addAttribute("list",list);
        return "student/allStudent";
    }

    //新增学生跳转页面
    @RequestMapping("toAddStudentPage")
    public String toAddStudentPage()
    {
        return "student/addStudent";
    }
    //新增学生
    @RequestMapping("addStudent")
    public String addStudent(Student student)
    {
        studentService.addStudent(student);
        return "redirect:/Student/allStudent";
    }
    //修改学生跳转页面
    @RequestMapping("toUpdateStudentPage")
    public String toUpdateStudent(int studentId,Model model)
    {
        Student student = studentService.queryStudentById(studentId);
        model.addAttribute("QStudent",student);
        return "student/updateStudent";
    }
    //更新学生
    @RequestMapping("updateStudent")
    public String updateStudent(Student student)
    {
        studentService.updateStudent(student);
        return "redirect:/Student/allStudent";
    }
    //删除学生
    @RequestMapping("deleteStudent")
    public String deleteStudent(int studentId)
    {
        studentService.deleteStudentById(studentId);
        return "redirect:/Student/allStudent";
    }
    //新增查询学生
    @RequestMapping("selectStudent")
    public String selectStudent(String queryStudentName,Model model)
    {
        if (queryStudentName.length()==0)
        {
            return "redirect:/Student/allStudent";
        }
        else
        {
            List<Student> list=studentService.selectStudentByName(queryStudentName);
            model.addAttribute("list",list);
        }
        return "student/allStudent";
    }
}
