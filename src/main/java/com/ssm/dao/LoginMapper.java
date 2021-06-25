package com.ssm.dao;

import com.ssm.pojo.Login;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginMapper {
    //验证登录
    List<Login> selectAllLoginUser();
    //查看登录表
    Login checkLogin(Login login);
    //更新类型和密码
    Login updateLogin(Login login);
    //删除
    int deleteLoginUser(@Param("loginAccount") String loginAccount);
    //查询用户
    Login selectByAccount(@Param("loginAccount") String id);
    //修改密码
    int updateLoginPwd(@Param("loginAccount")String id,@Param("oldPassword")String oldPassword,@Param("newPassword")String newPassword);
}
