package com.estel.controller;

import com.estel.model.ProductModel;
import com.estel.service.ProductService;
import com.estel.util.AuthUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    AuthUtil util = new AuthUtil();

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Integer id, Model model) {
        model.addAttribute("auth", util.auth());
        model.addAttribute("product", productService.getProductById(id));
        return "product";
    }

    @PostMapping("/product/create")
    public String createProduct(ProductModel product) {
        productService.saveProduct(product);
        return "redirect:/catalog";
    }
}
