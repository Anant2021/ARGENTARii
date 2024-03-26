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

}