package com.estel.controller;

import com.estel.service.UserService;
import com.estel.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
    AuthUtil util = new AuthUtil();

    @GetMapping("/admin")
    public String userList(Model model) {
        model.addAttribute("auth", util.auth());
        return "admin";
    }

}
