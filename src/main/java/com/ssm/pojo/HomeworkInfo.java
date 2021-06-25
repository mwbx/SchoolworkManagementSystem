package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HomeworkInfo {
    private int homeworkId;
    private int courseId;
    private String teacherAccount;
    private String questionType;
    private int questionId;
    private String homeworkStartTime;
    private String homeworkEndTime;
}
