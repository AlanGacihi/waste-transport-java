package com.waste.transport.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.waste.transport.model.Service;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Long> {
    List<Service> findByWtypeContainingIgnoreCase(String wtype);
}
