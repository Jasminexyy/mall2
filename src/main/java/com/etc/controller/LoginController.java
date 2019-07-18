package com.etc.controller;

import com.etc.model.entity.Admin;
import com.etc.model.entity.User;
import com.etc.model.service.LoginService;
import com.etc.model.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.sql.Date;

@RequestMapping("/")
@Controller
public class LoginController {

    private LoginService loginService;

    public LoginService getLoginService() {
        return loginService;
    }

    @Autowired
    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @RequestMapping("login")
    public String login(UserVO userVO, String identification, Model model, HttpSession session){
        int re=loginService.checkAccount(userVO,identification==null);
        if(re!=-1) {
            session.setAttribute("uid",re);
            int id = identification==null?1:0;
            session.setAttribute("identification",id);
            if(id==1) {
                return "forward:/showgoods.html";
            }
            else{
                return "forward:/admin.html";
            }
        }else {
            model.addAttribute("msg","用户名或密码错误，请重新登录");
            return "login";
        }
    }

    @RequestMapping("showregister")
    public String register(){
        return "register";
    }

    @RequestMapping("checkrepeat")
    @ResponseBody
    public boolean checkRepeat(String username,HttpSession session){
        int uid=-1;
        if(session.getAttribute("uid")==null){
            uid=-1;}
        else{
            uid= (int) session.getAttribute("uid");}
        return loginService.checkRepeat(username,uid);
    }

    @RequestMapping("doregister")
    public String doRegister(User user,HttpSession session){
        user.setUregistdate(new Date(new java.util.Date().getTime()));
        int id=loginService.register(user);
        session.setAttribute("uid",id);
        session.setAttribute("identification",1);
        return "forward:/showgoods.html";
    }

    @RequestMapping("getinfo")
    @ResponseBody
    public User getInfo(HttpSession session){
        return loginService.getInfo((Integer)session.getAttribute("uid"));
    }

    @RequestMapping("getadmininfo")
    @ResponseBody
    public Admin getAdminInfo(HttpSession session){
        return loginService.getAdminInfo((Integer)session.getAttribute("uid"));
    }

    @RequestMapping("modifyuserinfo")
    public String modifyUserInfo(Model model,HttpSession session){
        model.addAttribute("user",loginService.getInfo((Integer)session.getAttribute("uid")));
        return "modify-user-info";
    }

    @RequestMapping("domodifyuserinfo")
    public String doModifyUserInfo(User user){
        loginService.modify(user);
        return "forward:/showgoods.html";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }
}
