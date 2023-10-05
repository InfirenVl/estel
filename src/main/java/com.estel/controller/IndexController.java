package com.estel.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    boolean auth = (authentication instanceof AnonymousAuthenticationToken);


    @GetMapping("/")
    public String init(Model model) {
        model.addAttribute("auth", auth);
        return "index";
    }
}
