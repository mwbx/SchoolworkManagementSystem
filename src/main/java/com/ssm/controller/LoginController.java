package com.ssm.controller;

import com.ssm.pojo.Login;
import com.ssm.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@SessionAttributes("Login")
@Controller
@RequestMapping("/Login")

public class LoginController {
    @Autowired
    @Qualifier("loginServiceImpl")
    private LoginService loginService;
    //登录验证
    @RequestMapping("checkUser")
    public String check(Login login, ModelMap modelMap){
        Login login1 = loginService.checkLogin(login);
        if (login1!=null)
        {
            String v = login1.getLoginType();
            modelMap.addAttribute("Login",login1);
            switch (v)
            {
                case "1":
                    return "teacherIndex" ;
                case "2":
                    return "studentIndex";
                case "0":
                    return "adminIndex";
            }
            return "../../index";
        }
        else
        {
            return "../../index";
        }
    }
    //退出登录
    @RequestMapping("outLogin")
    public String outLogin()
    {
        return "../../index";
    }
    //跳转到修改页面
    @RequestMapping("toUpdatePassword")
    public String toUpdatePassword(){
        return "update_password";
    }
    //修改密码
    @RequestMapping("UpdatePassword")
    public String UpdatePassword(@RequestParam(value = "loginAccount",required = false)String loginAccount,
                                 @RequestParam(value = "oldPassword",required = false)String oldPassword,
                                 @RequestParam(value = "newPassword",required = false)String newPassword,
                                   HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        System.out.println(loginAccount+"-------"+oldPassword+"=========="+newPassword);
        String a=loginService.updateLoginPwd(loginAccount,oldPassword,newPassword);
        PrintWriter out=response.getWriter();
        if("1".equals(a)){
            out.write("<script type='text/javascript'>alert('Password changed successfully!');</script>");
            out.flush();
        }
        if("2".equals(a)){
            out.write("<script type='text/javascript'>alert('Password change failed!');</script>");
            out.flush();
        }
        return "update_password";
    }
}
