package com.ssm.service.serviceImpl;

import com.ssm.dao.StudentMapper;
import com.ssm.pojo.Student;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    public int addStudent(Student student) {
        return studentMapper.addStudent(student);
    }

    public int deleteStudentById(int id) {
        return studentMapper.deleteStudentById(id);
    }

    public int updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }

    public Student queryStudentById(int id) {
        return studentMapper.queryStudentById(id);
    }

    public List<Student> queryAllStudent() {
        return studentMapper.queryAllStudent();
    }

    public List<Student> selectStudentByName(String StudentName) {
        return studentMapper.selectStudentByName(StudentName);
    }
}
