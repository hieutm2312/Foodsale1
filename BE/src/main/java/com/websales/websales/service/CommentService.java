package com.websales.websales.service;

import com.websales.websales.model.Comment;
import com.websales.websales.responsitory.CommentResponitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {
    @Autowired
    private CommentResponitory responitory;

    public Comment saveComment(Comment comment) {
        return responitory.save(comment);
    }

    public List<Comment> saveComments(List<Comment> comment) {
        return responitory.saveAll(comment);
    }

    public List<Comment> getComments() {
        return responitory.findAll();
    }

    public List<Comment> getCommentByProductId(int product_Id) {
        return responitory.findByProductId(product_Id);
    }

    public String deleteCommentByProductId(int product_id) {
        responitory.deleteCommentByProductId(product_id);
        return "Product_id removed " + product_id;
    }
}
