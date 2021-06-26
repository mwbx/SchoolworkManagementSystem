package com.ssm.dao;

import com.ssm.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    //添加一个学生
    int addStudent(Student student);
    //删除一个学生
    int deleteStudentById(@Param("studentId") int id);
    //修改学生信息
    int updateStudent(Student student);
    //查询一个学生
    Student queryStudentById(@Param("studentId")int id);
    //查询全部学生
    List<Student> queryAllStudent();
    //按照名字查询学生
    List<Student> selectStudentByName(@Param("studentName")String StudentName);
}
