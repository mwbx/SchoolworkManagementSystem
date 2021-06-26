package com.ssm.service.serviceImpl;

import com.ssm.dao.TeacherMapper;
import com.ssm.pojo.Teacher;
import com.ssm.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherMapper teacherMapper;
    public int addTeacher(Teacher teacher) {
        return teacherMapper.addTeacher(teacher);
    }

    public int deleteTeacherById(int id) {
        return teacherMapper.deleteTeacherById(id);
    }

    public int updateTeacher(Teacher teacher) {
        return teacherMapper.updateTeacher(teacher);
    }

    public Teacher queryTeacherById(int id) {
        return teacherMapper.queryTeacherById(id);
    }

    public List<Teacher> queryAllTeacher() {
        return teacherMapper.queryAllTeacher();
    }

    public List<Teacher> selectTeacherByName(String studentName) {
        return teacherMapper.selectTeacherByName(studentName);
    }
}
