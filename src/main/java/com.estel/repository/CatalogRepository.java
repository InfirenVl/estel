package com.estel.repository;

import com.estel.model.PostModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CatalogRepository extends JpaRepository<PostModel, Integer> {
    List<PostModel> findByTitle(String title);

    List<PostModel> findByCategory(String category);
}
