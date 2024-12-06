package com.waste.transport.controller;

import lombok.RequiredArgsConstructor;

import org.modelmapper.ModelMapper;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.waste.transport.dto.CalendarDTO;
import com.waste.transport.dto.CreateCalendarRequest;
import com.waste.transport.model.Calendar;
import com.waste.transport.service.CalendarService;

import jakarta.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/calendar")
@RequiredArgsConstructor
public class CalendarController {
    private final CalendarService calendarService;
    private final ModelMapper modelMapper;

    @GetMapping
    public ResponseEntity<List<CalendarDTO>> getAllCalendarEvents() {
        List<CalendarDTO> events = calendarService.getAllCalendarEvents().stream()
                .map(calendar -> modelMapper.map(calendar, CalendarDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(events);
    }

    @GetMapping("/range")
    public ResponseEntity<List<CalendarDTO>> getCalendarEventsByDateRange(
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate) {
        List<CalendarDTO> events = calendarService.getCalendarEventsByDateRange(startDate, endDate).stream()
                .map(calendar -> modelMapper.map(calendar, CalendarDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(events);
    }

    @PostMapping
    public ResponseEntity<CalendarDTO> createCalendarEvent(@Valid @RequestBody CreateCalendarRequest request) {
        Calendar calendar = modelMapper.map(request, Calendar.class);
        Calendar savedCalendar = calendarService.createCalendarEvent(calendar);
        return ResponseEntity.ok(modelMapper.map(savedCalendar, CalendarDTO.class));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCalendarEvent(@PathVariable Long id) {
        calendarService.deleteCalendarEvent(id);
        return ResponseEntity.noContent().build();
    }
}
