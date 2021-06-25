package com.ssm.dao;

import com.ssm.pojo.ShortAnswerQuestions;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionMapper {
    List<ShortAnswerQuestions> selectSAQ(@Param("saqCourseId") int saqCourseId);
}
