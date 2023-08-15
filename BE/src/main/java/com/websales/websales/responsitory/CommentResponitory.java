package com.websales.websales.responsitory;

import com.websales.websales.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;

public interface CommentResponitory extends JpaRepository<Comment, Integer> {
    List<Comment> findByProductId(int product_id);

    @Modifying
    @Transactional
    @Query(value = "DELETE FROM websales.comment where comment.product_id =:product_id", nativeQuery = true)
    void deleteCommentByProductId(int product_id);
}
