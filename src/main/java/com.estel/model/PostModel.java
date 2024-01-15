package com.estel.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Table(name = "table_posts")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostModel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "filename")
    private String filename;
    @Column(name = "title")
    private String title;
    @Column(name = "username")
    private String username;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "category")
    private String category;
}