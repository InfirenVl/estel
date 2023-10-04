package com.estel.repository;

import com.estel.model.ProductModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CatalogRepository extends JpaRepository<ProductModel, Integer> {

}
