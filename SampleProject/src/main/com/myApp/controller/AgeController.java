package main.com.myApp.controller;

import main.model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class AgeController {

@RequestMapping("/age")
    public String showAgePage(Model model){
        model.addAttribute("userModel" , new UserModel());
        return "ageForm" ;
    }

@RequestMapping("/processAge")
    public String calcAge(@ModelAttribute("userModel") UserModel userModel, Model model){
//    2024-01-20
    DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date date ;
    Date currentDate = new Date(System.currentTimeMillis()) ;
    try {
        date = format.parse(userModel.getBirthDate());
//        date = format.parse("2000/10/26");

    } catch (Exception e) {

        throw new RuntimeException(e);
    }
    System.out.println(date);
    int resultDays = (currentDate.getDay() -  date.getDate());
    int resultMonths = (currentDate.getMonth() - date.getMonth());
    int resultYears = (currentDate.getYear() - date.getYear());

    if(resultDays < 0){
        resultMonths--;
        resultDays += 30 ;
    }
    if(resultMonths < 0){
        resultYears--;
        resultMonths += 12 ;
    }


//    model.addAttribute("days" , resultDays) ;
//    model.addAttribute("months" , resultMonths) ;
//    model.addAttribute("years" , resultYears) ;

    userModel.setDays(resultDays) ;
    userModel.setMonths(resultMonths);
    userModel.setYears(resultYears);
    model.addAttribute("userModel" , userModel) ;




    return "ageResult" ;
    }


}
