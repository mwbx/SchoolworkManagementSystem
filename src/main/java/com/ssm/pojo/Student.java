package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private int studentId;
    private String studentAccount;
    private String studentName;
    private String studentSex;
    private String studentInstitute;
    private String major;
    private String studentClass;
    private String studentPhone;
    private String studentAuthenticationStatus;
    private int studentAge;
}
