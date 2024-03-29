package com.mybank.controllers;

import com.mybank.models.User;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class registerController {
    @GetMapping("/register") public ModelAndView getRegister(){
        ModelAndView getRegisterPage = new ModelAndView("register");
        System.out.println("In getRegister Controller");
        getRegisterPage.addObject("PageTitle","Register");
        return  getRegisterPage;
    }
@PostMapping("/register")
public ModelAndView register(@Valid @ModelAttribute("registerUser")User user,
                             BindingResult result,
                             @RequestParam("firstName") String firstName,
                             @RequestParam("lastName") String lastName,
                             @RequestParam("email") String email,
                             @RequestParam("password") String password,
                             @RequestParam("conformPassword") String conformPassword){
        ModelAndView registrationPage = new ModelAndView("register");
        //check for Errors
    if(result.hasErrors() && conformPassword.isEmpty()){
        registrationPage.addObject("conformPassword","The Conform field is required");
        return  registrationPage;
    }
    return registrationPage;
}
}
