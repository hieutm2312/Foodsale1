package com.websales.websales.responsitory;

import com.websales.websales.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserResponitory extends JpaRepository<User, Integer> {
    @Query(value = "SELECT * FROM websales.user where user.username = :username", nativeQuery = true)
    List<User> findByUsername(String username);
}
