package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Teacher {
    private int teacherId;
    private String teacherAccount;
    private String teacherName;
    private String teacherSex;
    private String teacherPosition;
    private String teacherPhone;
    private String teacherEmail;
    private int teacherAge;
}
