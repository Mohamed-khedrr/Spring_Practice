package main.com.myApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.* ;
import javax.servlet.http.HttpServletRequest;

@Controller
public class FormController {

    @RequestMapping("/name")
    public String showPage(){
        return "formPage" ;
    }

    @RequestMapping("/")
    public String showHome(){
        return "homePage" ;
    }


}
