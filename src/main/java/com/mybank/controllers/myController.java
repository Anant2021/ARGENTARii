package com.mybank.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller public class myController {

@GetMapping("/")
    public ModelAndView getIndex(){
    ModelAndView getPage= new ModelAndView("index");
    getPage.addObject("PageTitle","Home");
    System.out.println("In Controller");
    return getPage;
}

@GetMapping("/login")
public ModelAndView getLogin(){
    ModelAndView getLoginPage = new ModelAndView("login");
    System.out.println("In Login Page Controller");
    getLoginPage.addObject("PageTitle","Login");
    return getLoginPage;

}
@GetMapping("/register") public ModelAndView getRegister(){
    ModelAndView getRegisterPage = new ModelAndView("register");
    System.out.println("In getRegister Controller");
    getRegisterPage.addObject("PageTitle","Register");
    return  getRegisterPage;
}

}