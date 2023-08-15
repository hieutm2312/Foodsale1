package com.websales.websales.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "productsize")
public class ProductSize {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false)
    private int product_id;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id", referencedColumnName = "id", foreignKey = @ForeignKey(name = "FK_product_productsize"), insertable = false, updatable = false, nullable = false)
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    Product product;
    @Column(nullable = false)
    private int size_id;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "size_id", referencedColumnName = "id", foreignKey = @ForeignKey(name = "FK_size_productsize"), insertable = false, updatable = false, nullable = false)
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    Size size;
    @Column(nullable = false)
    private int quantity;
}
