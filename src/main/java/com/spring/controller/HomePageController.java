/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author rahul
 */

@Controller
@RequestMapping("/sid.htm")
public class HomePageController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap model) {
        System.out.println("on method");
        model.put("printme", "Siddharth !!");
        return "index";
    }
}
