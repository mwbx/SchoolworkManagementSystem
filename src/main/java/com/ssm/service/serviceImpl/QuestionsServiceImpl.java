package com.ssm.service.serviceImpl;

import com.ssm.dao.QuestionMapper;
import com.ssm.pojo.ShortAnswerQuestions;
import com.ssm.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionsServiceImpl implements QuestionService {
    @Autowired
    private QuestionMapper questionMapper;
    @Override
    public List<ShortAnswerQuestions> selectSAQ(int saqCourseId) {
        return questionMapper.selectSAQ(saqCourseId);
    }
}
