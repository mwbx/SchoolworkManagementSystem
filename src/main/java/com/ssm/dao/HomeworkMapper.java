package com.ssm.dao;

import com.ssm.pojo.HomeworkInfo;
import com.ssm.pojo.ShortAnswerQuestions;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HomeworkMapper {
    //老师添加作业
    int insertHomework(HomeworkInfo homeworkInfo);
    //老师查看正在做的作业
    List<HomeworkInfo> NewHomework(@Param("NowTime") String NowTime, @Param("teacherAccount") String teacherAccount, @Param("courseId") Integer courseId);
    //学生获取作业
    List<ShortAnswerQuestions>getMyHomework(@Param("courseId") Integer courseId,@Param("nowTime") String NowTime);
    //学生写简答题
    int doShortHomework(@Param("questionAnswer")String questionAnswer,@Param("studentAccount") String studentAccount,@Param("courseId") Integer courseId,@Param("nowTime") String nowTime,@Param("saqId") Integer saqId);
}
