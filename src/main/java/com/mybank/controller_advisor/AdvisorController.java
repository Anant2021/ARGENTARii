package com.mybank.controller_advisor;

import com.mybank.models.User;
import org.springframework.web.bind.annotation.ModelAttribute;

public class AdvisorController {
    @ModelAttribute("registerUser")
    public User getUserDefaults(){
    return  new User();
    }
    
}
