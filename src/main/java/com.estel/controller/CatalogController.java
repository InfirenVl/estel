package com.estel.controller;


import com.estel.model.ProductModel;
import com.estel.repository.CatalogRepository;
import com.estel.service.ProductService;
import com.estel.util.AuthUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class CatalogController {
    private final ProductService productService;
    AuthUtil util = new AuthUtil();

    @GetMapping("/catalog")
    public String catalog(@RequestParam(name = "title", required = false) String title,
                          @RequestParam(name = "category", required = false) String category,
                          Model model) {
        model.addAttribute("auth", util.auth());
        model.addAttribute("catalog", productService.listProducts(title));
        model.addAttribute("category", productService.listCategory(category));
        return "catalog";

    }


}
