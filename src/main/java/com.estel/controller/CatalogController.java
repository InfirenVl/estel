package com.estel.controller;


import com.estel.model.ProductModel;
import com.estel.repository.CatalogRepository;
import com.estel.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class CatalogController {
    private final ProductService productService;

    @GetMapping("/catalog")
    public String catalogPage() {
        return "catalog";
    }

    @PostMapping("/product/create")
    public String createProduct(ProductModel product) {
        productService.saveProduct(product);
        return "redirect:/catalog";
    }
}
