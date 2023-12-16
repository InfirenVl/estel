package com.estel.controller;

import com.estel.model.PostModel;
import com.estel.service.ProductService;
import com.estel.util.AuthUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
@Slf4j
@RequiredArgsConstructor
public class PostController {
    private final ProductService productService;
    AuthUtil util = new AuthUtil();
    @GetMapping("/new-post")
    public String catalogEdit(Model model) {
        model.addAttribute("auth", util.auth());
        return "create-post";

    }
    @PostMapping("/new-post/create")
    public String createProduct(PostModel product, Model model) {
        model.addAttribute("auth", util.auth());
        productService.saveProduct(product);
        return "redirect:/new-post";
    }

    @PostMapping("/new-post/delete")
    public String deleteProduct(Integer id, Model model) {
        model.addAttribute("auth", util.auth());
        try {
            productService.deleteProduct(id);
        } catch (EmptyResultDataAccessException e) {
            model.addAttribute("errorId", "Товар не найден");
        }
        return "redirect:/new-post";
    }
}
