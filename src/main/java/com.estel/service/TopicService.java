package com.estel.service;

import com.estel.model.PostModel;
import com.estel.model.TopicModel;
import com.estel.repository.TopicRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class TopicService {
    private final TopicRepository topicRepository;

    public List<TopicModel> listTopics(String title) {
        if (title != null) return topicRepository.findByTitle(title);
        return topicRepository.findAll();
    }

    public TopicModel getTopicById(int id) {
        return topicRepository.findById(id).orElse(null);
    }
}
