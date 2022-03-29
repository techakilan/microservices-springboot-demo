package com.westerly.microservicesfrontend.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FrontendController {
    private boolean isLoggedUser=false;
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("is_logged_user", isLoggedUser);
        return "home";
    }

    @GetMapping("/login")
    public String hello(Model model) {
        this.isLoggedUser = true;
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) throws ServletException {  
        this.isLoggedUser = false;      
        request.logout();
        return "redirect:/";

    }
}