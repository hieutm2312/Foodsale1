package com.websales.websales.controller;

import com.websales.websales.model.Comment;
import com.websales.websales.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("http://localhost:3000/")
public class CommentController {
    @Autowired
    private CommentService service;

    @PostMapping("/addComment")
    public Comment addComment(@RequestBody Comment comment) {
        return service.saveComment(comment);
    }

    @PostMapping("/addComments")
    public List<Comment> addComments(@RequestBody List<Comment> comments) {
        return service.saveComments(comments);
    }

    @GetMapping("/comments")
    public List<Comment> findAlLCarts() {
        return service.getComments();
    }

    @GetMapping("/commentByProductId/{product_Id}")
    public List<Comment> findCommentByProductId(@PathVariable int product_Id) {
        return service.getCommentByProductId(product_Id);
    }

    @DeleteMapping("/deleteCommentByProductId/{product_id}")
    public String deleteCommentByProductId(@PathVariable int product_id) {
        return service.deleteCommentByProductId(product_id);
    }
}
