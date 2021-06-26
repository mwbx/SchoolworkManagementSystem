package com.ssm.service;

import com.ssm.pojo.Student;

import java.util.List;

public interface StudentService {
    //添加一个学生
    int addStudent(Student student);
    //删除一个学生
    int deleteStudentById(int id);
    //修改学生信息
    int updateStudent(Student student);
    //查询一个学生
    Student queryStudentById(int id);
    //查询全部学生
    List<Student> queryAllStudent();
    //按名字查询学生
    List<Student> selectStudentByName(String StudentName);
}
