package com.estel.controller;

import com.estel.model.CommentModel;
import com.estel.model.PostModel;
import com.estel.service.CommentService;
import com.estel.service.PostService;
import com.estel.service.TopicService;
import com.estel.util.AuthUtil;
import com.estel.util.CurrentUsername;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class TopicController {
    private final TopicService topicService;
    private final PostService postService;
    private final CommentService commentService;
    AuthUtil util = new AuthUtil();
    CurrentUsername username = new CurrentUsername();

    @GetMapping("topic/{title}")
    public String topicPath(@PathVariable String title,
                            @RequestParam(name = "title", required = false) String post,
                            Model model) {
        model.addAttribute("auth", util.auth());
        model.addAttribute("topics", topicService.listTopics(title));
        model.addAttribute("posts", postService.listPosts(post));

        return "topic";
    }

    @GetMapping("topic/{title}/post/{title}")
    public String postPath(@PathVariable String title,
                            String user,
                            Model model) {
        model.addAttribute("auth", util.auth());
        model.addAttribute("getCurrentUsername", username.getCurrentUsername());
        model.addAttribute("topics", topicService.listTopics(title));
        model.addAttribute("posts", postService.listPosts(title));
        model.addAttribute("comment", commentService.listComment(user));

        return "post";
    }

//    public int returnIdPost(PostModel post){
//
//        return post.getId();
//    }


}
