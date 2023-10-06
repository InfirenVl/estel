package com.estel.repository;

import com.estel.model.ProductModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CatalogRepository extends JpaRepository<ProductModel, Integer> {
    List<ProductModel> findByTitle(String title);
}
