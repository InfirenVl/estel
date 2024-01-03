package com.estel.repository;


import com.estel.model.TopicModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TopicRepository extends JpaRepository<TopicModel, Integer> {
    List<TopicModel> findByTitle(String title);

}
