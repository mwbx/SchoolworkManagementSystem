package com.ssm.service;

import com.ssm.pojo.HomeworkInfo;
import com.ssm.pojo.ShortAnswerQuestions;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HomeworkService {
    //老师添加作业
    int insertHomework(HomeworkInfo homeworkInfo);
    //老师查看作业
    List<HomeworkInfo> NewHomework(String NowTime, String teacherAccount,Integer courseId);
    //学生获取作业
    List<ShortAnswerQuestions>getMyHomework(Integer courseId,String nowTime);
    //学生写简答题作业
    int doShortHomework(String questionAnswer,String studentAccount,Integer courseId,String nowTime,Integer saqId);
}
