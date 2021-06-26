package com.ssm.service.serviceImpl;

import com.ssm.dao.LoginMapper;
import com.ssm.pojo.Login;
import com.ssm.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;
    public List<Login> selectAllLoginUser() {
        return loginMapper.selectAllLoginUser();
    }

    public Login checkLogin(Login login) {
        return loginMapper.checkLogin(login);
    }

    public Login updateLogin(Login login) {
        return loginMapper.updateLogin(login);
    }


    public int deleteLoginUser(String loginAccount) {
        return loginMapper.deleteLoginUser(loginAccount);
    }
    @Override
    public String updateLoginPwd(String id, String oldPassword, String password) {
        String judge="0";
        Login login=loginMapper.selectByAccount(id);
        System.out.println(login+"--------------"+id);
        if (login!=null)
        {
            if (login.getLoginPwd().equals(oldPassword)){
                loginMapper.updateLoginPwd(id,oldPassword,password);
                judge="1";//更新成功
                System.out.println("更新成功");
            }
            else {
                judge="2";//更新失败
                System.out.println("更新成功");
            }
        }
        return judge;
    }

    @Override
    public Login selectByAccount(String id) {
        return null;
    }
}
