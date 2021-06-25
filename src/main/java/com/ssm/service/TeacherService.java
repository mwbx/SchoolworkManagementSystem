package com.ssm.service;

import com.ssm.pojo.Teacher;

import java.util.List;

public interface TeacherService {
    //添加一个老师
    int addTeacher(Teacher teacher);
    //删除一个老师
    int deleteTeacherById(int id);
    //修改老师信息
    int updateTeacher(Teacher teacher);
    //查询一个老师
    Teacher queryTeacherById(int id);
    //查询全部老师
    List<Teacher> queryAllTeacher();
    //按名字查询老师
    List<Teacher> selectTeacherByName(String studentName);
    //
}
