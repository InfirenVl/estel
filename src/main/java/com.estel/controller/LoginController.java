package com.estel.controller;

import com.estel.entity.User;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/login")
    public String authCheck(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        boolean auth = (authentication instanceof AnonymousAuthenticationToken);
        model.addAttribute("auth", auth);
        if(!auth){
            return "redirect:/";
        }
        return "login";
    }
}
