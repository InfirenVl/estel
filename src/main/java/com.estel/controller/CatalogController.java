package com.estel.controller;


import com.estel.model.ProductModel;
import com.estel.repository.CatalogRepository;
import com.estel.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class CatalogController {
    private final ProductService productService;

    @GetMapping("/catalog")
    public String catalog(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("catalog", productService.listProducts(title));
        return "catalog";
    }

    @PostMapping("/product/create")
    public String createProduct(ProductModel product) {
        productService.saveProduct(product);
        return "redirect:/catalog";
    }
}
