package com.ssm.service.serviceImpl;

import com.ssm.dao.HomeworkMapper;
import com.ssm.pojo.HomeworkInfo;
import com.ssm.pojo.ShortAnswerQuestions;
import com.ssm.service.HomeworkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeworkImpl implements HomeworkService {
    @Autowired
    private HomeworkMapper homeworkMapper;
    @Override
    public int insertHomework(HomeworkInfo homeworkInfo) {
        return homeworkMapper.insertHomework(homeworkInfo);
    }

    @Override
    public List<HomeworkInfo> NewHomework(String NowTime, String teacherAccount, Integer courseId) {
        return homeworkMapper.NewHomework(NowTime,teacherAccount,courseId);
    }

    @Override
    public List<ShortAnswerQuestions> getMyHomework(Integer courseId, String nowTime) {
        return homeworkMapper.getMyHomework(courseId,nowTime);
    }

    @Override
    public int doShortHomework(String questionAnswer,String studentAccount, Integer courseId, String nowTime, Integer saqId) {
        System.out.println("-----4--------");
        return homeworkMapper.doShortHomework(questionAnswer,studentAccount,courseId,nowTime,saqId);
    }
}
