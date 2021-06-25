package com.ssm.controller;

import com.ssm.pojo.HomeworkInfo;
import com.ssm.pojo.ShortAnswerQuestions;
import com.ssm.service.HomeworkService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;


@Controller
@RequestMapping("/HomeworkInfo")
@SessionAttributes("courseId")
public class HomeworkController {
    @Autowired
    private HomeworkService homeworkInfoService;

    //跳转到添加作业页面
    @RequestMapping("toAddHomeworkPage")
    public String toAddHomeworkPage(String courseId, ModelMap modelMap)
    {
        modelMap.addAttribute("courseId",courseId);
        return "teacher/addHomework";
    }
    //添加简答题作业
    @RequestMapping("addSAQ")
    public String addSAQ(HomeworkInfo homeworkInfo,HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SimpleDateFormat sdf = new SimpleDateFormat();
        Calendar c = Calendar.getInstance();
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");

        homeworkInfo.setHomeworkStartTime(sdf.format(c.getTime()));

        c.add(Calendar.DAY_OF_MONTH,1);

        homeworkInfo.setHomeworkEndTime(sdf.format(c.getTime()));

        System.out.println(homeworkInfo);

        homeworkInfoService.insertHomework(homeworkInfo);
        PrintWriter out=response.getWriter();
        return "redirect:/HomeworkInfo/toAddHomeworkPage";
    }
    //查看正在进行的作业
    @RequestMapping("NowHomework")
    public String NowHomework(String teacherAccount, Integer courseId)
    {
        SimpleDateFormat sdf = new SimpleDateFormat();
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
        Calendar c = Calendar.getInstance();
        homeworkInfoService.NewHomework(sdf.format(c.getTime()),teacherAccount,courseId);
        return "";
    }
    //学生获取作业
    @RequestMapping("getHomework")
    public String getHomework(Integer courseId, Model model)
    {
        SimpleDateFormat sdf = new SimpleDateFormat();
        Calendar c = Calendar.getInstance();
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
        List<ShortAnswerQuestions> list=homeworkInfoService.getMyHomework(courseId,sdf.format(c.getTime()));
        model.addAttribute("list",list);
        return "student/myHomework";
    }
    //学生写作业
    @RequestMapping("doShortHomework")
    public String doShortHomework(String questionAnswer, String studentAccount, @Param("courseId") Integer courseId, Integer saqId,HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SimpleDateFormat sdf = new SimpleDateFormat();
        Calendar c = Calendar.getInstance();
        String s=questionAnswer.replace(" ","");
        s=s.replace("\n","");

        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
        homeworkInfoService.doShortHomework(s,studentAccount,courseId,sdf.format(c.getTime()),saqId);
        return "redirect:/HomeworkInfo/getHomework?courseId="+courseId;
    }
}
