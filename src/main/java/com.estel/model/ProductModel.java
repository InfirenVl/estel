package com.estel.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Table(name = "table_catalog")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductModel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "image")
    private String image; //Ссылка на объект в Object Storage
    @Column(name = "title")
    private String title;
    @Column(name = "collection")
    private String collection;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "price")
    private int price;
    @Column(name = "category")
    private String category;
}
