package com.ssm.dao;

import com.ssm.pojo.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {
    //添加一个老师
    int addTeacher(Teacher teacher);
    //删除一个老师
    int deleteTeacherById(@Param("teacherId") int id);
    //修改老师信息
    int updateTeacher(Teacher teacher);
    //查询一个老师
    Teacher queryTeacherById(@Param("teacherId")int id);
    //查询全部老师
    List<Teacher> queryAllTeacher();
    //按名字查询老师
    List<Teacher> selectTeacherByName(@Param("teacherName") String teacherName);
}
