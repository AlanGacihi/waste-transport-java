package com.waste.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.waste.transport.model.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);

    Boolean existsByUsername(String username);

    Boolean existsByEmail(String email);
}
