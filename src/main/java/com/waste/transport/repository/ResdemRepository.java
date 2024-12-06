package com.waste.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.waste.transport.model.Resdem;
import com.waste.transport.model.User;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface ResdemRepository extends JpaRepository<Resdem, Long> {
    List<Resdem> findByServid(Long servid);

    List<Resdem> findByUser(User user);

    List<Resdem> findByDemandBetween(LocalDate startDate, LocalDate endDate);
}