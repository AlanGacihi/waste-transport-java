package com.waste.transport.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.waste.transport.model.Calendar;
import com.waste.transport.model.Service;
import com.waste.transport.service.CalendarService;
import com.waste.transport.service.ServiceService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/calendar")
@RequiredArgsConstructor
public class CalendarViewController {
    private final CalendarService calendarService;
    private final ServiceService wasteService;

    @GetMapping
    public String showCalendar(Model model,
            @RequestParam(required = false) Integer year,
            @RequestParam(required = false) Integer month) {
        LocalDate today = LocalDate.now();
        year = year != null ? year : today.getYear();
        month = month != null ? month : today.getMonthValue();

        LocalDate currentDate = LocalDate.of(year, month, 1);
        LocalDate startDate = currentDate.withDayOfMonth(1);
        LocalDate endDate = currentDate.withDayOfMonth(currentDate.lengthOfMonth());

        List<Calendar> events = calendarService.getCalendarEventsByDateRange(startDate, endDate);
        List<Service> services = wasteService.getAllServices();

        model.addAttribute("currentDate", currentDate);
        model.addAttribute("events", events);
        model.addAttribute("services", services);
        model.addAttribute("prevMonth", currentDate.minusMonths(1));
        model.addAttribute("nextMonth", currentDate.plusMonths(1));

        return "calendar";
    }
}
