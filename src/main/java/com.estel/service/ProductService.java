package com.estel.service;


import com.estel.model.ProductModel;
import com.estel.repository.CatalogRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final CatalogRepository catalogRepository;


    public List<ProductModel> listProducts(String title) {
        if (title != null) return catalogRepository.findByTitle(title);
        return catalogRepository.findAll();
    }

    public List<ProductModel> listCategory(String category) {
        if (category != null) return catalogRepository.findByCategory(category);
        return catalogRepository.findAll();
    }


    public void saveProduct(ProductModel product) {
        log.info("Saving new {}", product);
        catalogRepository.save(product);

    }

    public void deleteProduct(int id) {
        catalogRepository.deleteById(id);

    }

    public ProductModel getProductById(int id) {
        return catalogRepository.findById(id).orElse(null);
    }
}
