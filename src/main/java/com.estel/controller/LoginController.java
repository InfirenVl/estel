package com.estel.controller;

import com.estel.util.AuthUtil;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    AuthUtil util = new AuthUtil();

    @GetMapping("/login")
    public String authCheck(Model model) {
        model.addAttribute("auth", util.auth());
        if (!util.auth()) {
            return "redirect:/";
        }
        return "login";
    }
}
