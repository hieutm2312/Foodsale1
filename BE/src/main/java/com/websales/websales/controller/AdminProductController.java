package com.websales.websales.controller;

import com.websales.websales.model.AdminProduct;
import com.websales.websales.service.AdminProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("http://localhost:3000/")
public class AdminProductController {
    @Autowired
    private AdminProductService service;

    @PostMapping("/addAdminProduct")
    public AdminProduct addAdminProduct(@RequestBody AdminProduct adminProduct) {
        return service.saveAdminProduct(adminProduct);
    }

    @PostMapping("/addAdminProducts")
    public List<AdminProduct> addAdminProducts(@RequestBody List<AdminProduct> adminProducts) {
        return service.saveAdminProducts(adminProducts);
    }

    @GetMapping("/adminProducts")
    public List<AdminProduct> findAlLAdminProducts() {
        return service.getAdminProducts();
    }

    @GetMapping("/adminProductById/{id}")
    public AdminProduct findAdminProductById(@PathVariable int id) {
        return service.getAdminProductById(id);
    }

    @PutMapping("/updateAdminProduct")
    public AdminProduct update(@RequestBody AdminProduct adminProduct) {
        return service.updateAdminProduct(adminProduct);
    }

    @DeleteMapping("/deleteAdminProduct/{id}")
    public String deleteAdminProduct(@PathVariable int id) {
        return service.deleteAdminProduct(id);
    }
}