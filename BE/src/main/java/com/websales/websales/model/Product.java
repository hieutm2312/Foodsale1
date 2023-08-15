package com.websales.websales.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false)
    private String nameProduct;
    @Column(nullable = false)
    private String model;
    @Column(nullable = false)
    private String image;
    @Column(nullable = false)
    private int price;
    @Column(nullable = true)
    private String describes;
    @Column(nullable = false)
    private String color;
}
