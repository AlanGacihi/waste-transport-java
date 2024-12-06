package com.waste.transport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.waste.transport.model.Calendar;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface CalendarRepository extends JpaRepository<Calendar, Long> {
    List<Calendar> findByServid(Long servid);

    List<Calendar> findBySdateBetween(LocalDate startDate, LocalDate endDate);
}