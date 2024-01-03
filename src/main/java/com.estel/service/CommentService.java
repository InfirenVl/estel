package com.estel.service;


import com.estel.model.CommentModel;
import com.estel.model.PostModel;
import com.estel.repository.CommentRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;


    public List<CommentModel> listComment(String username) {
        if (username != null) return commentRepository.findByUsername(username);
        return commentRepository.findAll();
    }

    public void saveComment(CommentModel comment) {
        log.info("Saving new {}", comment);
        commentRepository.save(comment);

    }

}
