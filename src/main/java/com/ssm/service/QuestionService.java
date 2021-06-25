package com.ssm.service;

import com.ssm.pojo.ShortAnswerQuestions;

import java.util.List;

public interface QuestionService {
    List<ShortAnswerQuestions> selectSAQ(int saqCourseId);
}
