package com.dr.crm.controller;

import com.dr.crm.pojo.Users;
import com.dr.crm.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"users"})
public class LoginController {



    @Autowired
    private ILoginService iLoginService;
 /**
  * 测试登陆
  */
 @RequestMapping("/doLogin")
 public  String testLogin(Users  users,Model  model){
     //调用Serivce层
        try {
         Users  user=   iLoginService.selectLoginService(users);

            model.addAttribute("users",user);
          }catch (Exception  e){
              e.printStackTrace();
            return  "login";
          }
     return  "index";
 }

}
