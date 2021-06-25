package com.ssm.service;

import com.ssm.pojo.Login;

import java.util.List;

public interface LoginService {
    //验证登录
    List<Login> selectAllLoginUser();
    //查看登录表
    Login checkLogin(Login login);
    //更新类型和密码
    Login updateLogin(Login login);
    //删除
    int deleteLoginUser(String loginAccount);
    //修改密码
    String updateLoginPwd(String id,String oldPassword,String newPassword);
    //查找
    Login selectByAccount(String id);
}
