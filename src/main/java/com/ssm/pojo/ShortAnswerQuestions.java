package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShortAnswerQuestions {
    private int saqId;
    private int saqCourseId;
    private String saqSubject;
    private String saqAnswer;
}
