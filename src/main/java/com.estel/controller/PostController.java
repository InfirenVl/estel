package com.estel.controller;

import com.estel.config.YandexObjectStorageConfig;
import com.estel.model.CommentModel;
import com.estel.model.PostModel;
import com.estel.service.*;
import com.estel.util.AuthUtil;
import com.estel.util.CurrentUsername;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;


@Controller
@Slf4j
@RequiredArgsConstructor
public class PostController {
    private final PostService postService;
    private final TopicService topicService;
    private final CommentService commentService;

//    YandexObjectStorageService yandexObjectStorageService;

    AuthUtil util = new AuthUtil();
    CurrentUsername username = new CurrentUsername();



    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/new-post")
    public String catalogEdit(Model model) {
        model.addAttribute("auth", util.auth());
        return "create-post";

    }

    @PostMapping("/new-post/create")
    public String createPost(@RequestParam MultipartFile file,
                             PostModel post,
                             Model model) throws IOException {
        model.addAttribute("auth", util.auth());
//      String image = yandexObjectStorageService.uploadFile(file);
        if (file != null) {
            File uploadDir = new File(uploadPath);
            if(!uploadDir.exists()){
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            post.setFilename(resultFilename);


        }
        post.setUsername(username.getCurrentUsername());
        postService.savePost(post);
        return "redirect:/new-post";
    }


    @PostMapping("/topic/{title}/post/{title}/delete")
    public String deleteProduct(Integer id, Model model) {
        model.addAttribute("auth", util.auth());
        try {
            postService.deletePost(id);
        } catch (EmptyResultDataAccessException e) {
            model.addAttribute("errorId", "Пост не найден");
        }
        return "redirect:/";
    }

    @PostMapping("/topic/{title}/post/{title}/new-comment")
    public  String postComment(@PathVariable String title,
                               CommentModel comment,
                               Model model){
        model.addAttribute("auth", util.auth());
        model.addAttribute("getCurrentUsername", username.getCurrentUsername());
        model.addAttribute("topics", topicService.listTopics(title));
        model.addAttribute("posts", postService.listPosts(title));

        comment.setUsername(username.getCurrentUsername());
//        comment.setIdPost(returnIdPost());
        commentService.saveComment(comment);

        return "redirect:topic/${title}/post/${title}";
        //пофиксить:
        //редирект после отправки коммента
        // дизайн
        // отображение ток для лог юзеров
        //переделать страницу таблицы юзеров



    }

//    @PostMapping("/upload")
//    public String uploadPhoto()  {
//        // Вызовите метод загрузки файла из сервиса
//
//        // Верните ключ (или другую информацию) в качестве ответа
//        return key;
//    }
}
