package com.qf.travel.showError;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionShow {

    @ExceptionHandler
    public String showError (UnauthorizedException exception){
        System.out.println("**********************进来了");
       return "back/error";
    }

}
