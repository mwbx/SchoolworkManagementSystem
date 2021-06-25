package com.ssm.controller;

import com.ssm.pojo.ShortAnswerQuestions;
import com.ssm.pojo.Student;
import com.ssm.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/getHomework")
public class QuestionController {
    @Autowired
    private QuestionService questionService;
    //查看简答题
    @RequestMapping("selectShortQuestion")
    public String selectShortQuestion(int saqCourseId, Model model)
    {

        List<ShortAnswerQuestions> list = questionService.selectSAQ(saqCourseId);
        model.addAttribute("list",list);
        return "teacher/allShortAnswerQuestions" ;
    }
}
