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
public class UserEditController {
    @Autowired
    UserService userService;
    AuthUtil util = new AuthUtil();
    @GetMapping("/admin/user-editing")
    public String getView(Model model) {
        model.addAttribute("auth", util.auth());
        model.addAttribute("allUsers", userService.allUsers());
        return "user-editing";
    }
    @PostMapping("/admin/user-editing/delete")
    public String deleteUser(@RequestParam(required = true, defaultValue = "") Long userId, Model model) {
        model.addAttribute("auth", util.auth());
        userService.deleteUser(userId);
        return "redirect:/admin/user-editing";
    }
    @PostMapping("/admin/user-editing/change")
    public String changeRole(@RequestParam(required = true, defaultValue = "") Long userId, String userRole, Model model) {
        model.addAttribute("auth", util.auth());
        userService.changeRole(userId,userRole);
        return "redirect:/admin/user-editing";
    }

}
