package com.estel.controller;

import com.estel.util.AuthUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    AuthUtil util = new AuthUtil();

    @GetMapping("/")
    public String init(Model model) {
        model.addAttribute("auth", util.auth());
        return "index";
    }
}
