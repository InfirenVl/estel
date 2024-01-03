package com.estel.service;

import com.estel.model.PostModel;
import com.estel.repository.CatalogRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class PostService {
    private final CatalogRepository catalogRepository;


    public List<PostModel> listPosts(String title) {
        if (title != null) return catalogRepository.findByTitle(title);
        return catalogRepository.findAll();
    }

    public List<PostModel> listCategory(String category) {
        if (category != null) return catalogRepository.findByCategory(category);
        return catalogRepository.findAll();
    }


    public void savePost(PostModel post) {
        log.info("Saving new {}", post);
        catalogRepository.save(post);

    }

    public void deletePost(int id) {
        catalogRepository.deleteById(id);

    }

//    public void deletePost(String title) {
//        catalogRepository.deleteById(title);
//
//    }

    public PostModel getPostById(int id) {
        return catalogRepository.findById(id).orElse(null);
    }
}
