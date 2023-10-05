package com.estel.service;


import com.estel.model.ProductModel;
import com.estel.repository.CatalogRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final CatalogRepository catalogRepository;



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
