/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import java.util.List;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.dao.LoginDeo;
import com.spring.model.LoginModel;
import org.springframework.beans.factory.annotation.Autowired;


@Controller
public class LoginController {

    @Autowired
    LoginDeo login;

    @RequestMapping(value="/loginPage",method = RequestMethod.GET)
    public String loginPage(ModelMap model) {

        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute LoginModel cr) {
        System.out.print(cr.getUsername()+" - "+cr.getPasssword());
        List<LoginModel> list  = login.authentication(cr);
        try{

            if(list.get(0) != null){
                return "redirect:/showCourse.htm";
            }
            else{
                return "redirect:/loginPage.htm";
            }
        }
        catch(Exception ex){
            return "redirect:/loginPage.htm";
        }

    }


}
