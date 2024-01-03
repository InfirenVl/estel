package com.estel.repository;

import com.estel.model.CommentModel;
import com.estel.model.PostModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends JpaRepository<CommentModel, Integer> {
    List<CommentModel> findByUsername(String username);

    List<CommentModel> findById(int idPost);
}
