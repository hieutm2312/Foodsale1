package com.websales.websales.controller;

import com.websales.websales.model.Cart;
import com.websales.websales.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("http://localhost:3000/")
public class CartController {
    @Autowired
    private CartService service;

    @PostMapping("/addCart")
    public Cart addCart(@RequestBody Cart cart) {
        return service.saveCart(cart);
    }

    @PostMapping("/addCarts")
    public List<Cart> addCarts(@RequestBody List<Cart> carts) {
        return service.saveCarts(carts);
    }

    @GetMapping("/carts")
    public List<Cart> findAlLCarts() {
        return service.getCarts();
    }

    @GetMapping("/cartById/{id}")
    public Cart findCartById(@PathVariable int id) {
        return service.getCartById(id);
    }

    @GetMapping("/cartByClientId/{client_id}")
    public List<Cart> findBillByClientId(@PathVariable int client_id) {
        return service.getBillByClientId(client_id);
    }

    @DeleteMapping("/deleteCart/{id}")
    public String deleteCart(@PathVariable int id) {
        return service.deleteCart(id);
    }

    @DeleteMapping("/deleteCartByProductId/{product_id}")
    public String deleteCartByProductId(@PathVariable int product_id) {
        return service.deleteCartByProductId(product_id);
    }

    @DeleteMapping("/deleteAllCart/{client_id}")
    public String deleteAllCart(@PathVariable int client_id) {
        return service.deleteAllCart(client_id);
    }
}