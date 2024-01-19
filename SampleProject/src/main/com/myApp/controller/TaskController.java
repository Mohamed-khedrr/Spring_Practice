package main.com.myApp.controller;

import main.model.TaskModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class TaskController {

    @RequestMapping("/taskForm")
    public String showForm(Model model){
        model.addAttribute("taskModel" , new TaskModel()) ;
        return "taskForm" ;
    }

    @RequestMapping("/processTask")
    String processTaskForm(Model model,@ModelAttribute TaskModel taskModel){

        model.addAttribute(taskModel) ;
        return "taskResult" ;
    }



}
