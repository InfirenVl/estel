package com.estel.controller;

import com.estel.service.PostService;
import com.estel.service.ProductService;
import com.estel.service.TopicService;
import com.estel.util.AuthUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final TopicService topicService;
    AuthUtil util = new AuthUtil();

    @GetMapping("/")
    public String init(@RequestParam(name = "title", required = false) String title,
                       Model model) {
        model.addAttribute("auth", util.auth());
        model.addAttribute("topics", topicService.listTopics(title));
        return "index";
    }
}


