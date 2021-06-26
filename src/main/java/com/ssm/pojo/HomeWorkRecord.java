package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HomeWorkRecord {
    private int hrId;
    private Integer courseId;
    private String teacherAccount;
    private String questionType;
    private int questionId;
    private String questionAnswer;
    private String studentAccount;
    private String correctionState;
    private float achievement;
    private String homeworkStartTime;
    private String homeworkEndTime;
}
