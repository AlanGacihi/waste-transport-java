package com.waste.transport.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.waste.transport.model.Calendar;
import com.waste.transport.repository.CalendarRepository;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CalendarService {
    private final CalendarRepository calendarRepository;

    @Transactional(readOnly = true)
    public List<Calendar> getAllCalendarEvents() {
        return calendarRepository.findAll();
    }

    @Transactional(readOnly = true)
    public List<Calendar> getCalendarEventsByDateRange(LocalDate startDate, LocalDate endDate) {
        return calendarRepository.findBySdateBetween(startDate, endDate);
    }

    @Transactional
    public Calendar createCalendarEvent(Calendar calendar) {
        return calendarRepository.save(calendar);
    }

    @Transactional
    public void deleteCalendarEvent(Long id) {
        calendarRepository.deleteById(id);
    }
}