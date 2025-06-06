package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();
        model.addObject("message", "Hello from Spring MVC!");
        model.setViewName("welcome"); // Corresponds to welcome.jsp
        return model;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView welcomePageHome() {
        ModelAndView model = new ModelAndView();
        model.addObject("message", "Hello from Spring MVC!");
        model.setViewName("welcome"); // Corresponds to welcome.jsp
        return model;
    }

    @RequestMapping(value = "/greet", method = RequestMethod.GET)
    public ModelAndView greetUser() {
        ModelAndView model = new ModelAndView();
        model.addObject("message", "Greetings, user!");
        model.setViewName("welcome"); // Reusing the same JSP for simplicity
        return model;
    }
}