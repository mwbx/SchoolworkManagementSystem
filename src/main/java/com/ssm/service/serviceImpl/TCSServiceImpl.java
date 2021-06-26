package com.ssm.service.serviceImpl;

import com.ssm.dao.TCSMapper;
import com.ssm.pojo.Course;
import com.ssm.service.TCSService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TCSServiceImpl implements TCSService {
    @Autowired
    private TCSMapper tcsMapper;
    @Override
    public List<Course> selectMyCourse(String teacherAccount) {
        return tcsMapper.selectMyCourse(teacherAccount);
    }
}
