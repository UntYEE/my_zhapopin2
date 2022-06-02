package com.aistar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CommonController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/login")
    public String login() {
        return "customer/login";
    }

    @RequestMapping("/register")
    public String register() {
        return "customer/register";
    }

    @RequestMapping("/404")
    public String toPage404() {
        return "404/404";
    }

}
