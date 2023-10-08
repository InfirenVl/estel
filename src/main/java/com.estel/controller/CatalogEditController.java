package com.estel.controller;


import com.estel.model.ProductModel;
import com.estel.service.ProductService;
import com.estel.util.AuthUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.persistence.EntityExistsException;


@Controller
@Slf4j
@RequiredArgsConstructor
public class CatalogEditController {
    @Autowired
    private final ProductService productService;
    AuthUtil util = new AuthUtil();

    @GetMapping("/admin/catalog-editing")
    public String catalogEdit(Model model){
        model.addAttribute("auth", util.auth());
        return "catalog-editing";

    }

    @PostMapping("/admin/catalog-editing/create")
    public String createProduct(ProductModel product) {
        productService.saveProduct(product);
        return "redirect:/admin/catalog-editing";
    }
    @PostMapping("/admin/catalog-editing/delete")
    public String deleteProduct(Integer id, Model model) {
        try {
            productService.deleteProduct(id);
        } catch (EmptyResultDataAccessException e){
           //model.addAttribute("errorId", "Error" );
        }

        return "redirect:/admin/catalog-editing";
    }
}
