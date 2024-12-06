package com.waste.transport.controller;

import lombok.RequiredArgsConstructor;

import org.modelmapper.ModelMapper;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.waste.transport.dto.CreateResdemRequest;
import com.waste.transport.dto.ResdemDTO;
import com.waste.transport.model.Resdem;
import com.waste.transport.model.User;
import com.waste.transport.service.ResdemService;
import com.waste.transport.service.UserService;

import jakarta.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/redems")
@RequiredArgsConstructor
public class ResdemController {
    private final ResdemService redemService;
    private final UserService userService;
    private final ModelMapper modelMapper;

    @GetMapping
    public ResponseEntity<List<ResdemDTO>> getAllRedems() {
        List<ResdemDTO> redems = redemService.getAllRedems().stream()
                .map(redem -> modelMapper.map(redem, ResdemDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(redems);
    }

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<ResdemDTO>> getRedemsByUser(@PathVariable Long userId) {
        User user = userService.findUserById(userId);
        List<ResdemDTO> redems = redemService.getRedemsByUser(user).stream()
                .map(redem -> modelMapper.map(redem, ResdemDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(redems);
    }

    @GetMapping("/range")
    public ResponseEntity<List<ResdemDTO>> getRedemsByDateRange(
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate) {
        List<ResdemDTO> redems = redemService.getRedemsByDateRange(startDate, endDate).stream()
                .map(redem -> modelMapper.map(redem, ResdemDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(redems);
    }

    @PostMapping
    public ResponseEntity<ResdemDTO> createRedem(@Valid @RequestBody CreateResdemRequest request) {
        User user = userService.findUserById(request.getUserId());
        Resdem redem = modelMapper.map(request, Resdem.class);
        redem.setUser(user);
        Resdem savedRedem = redemService.createRedem(redem);
        return ResponseEntity.ok(modelMapper.map(savedRedem, ResdemDTO.class));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRedem(@PathVariable Long id) {
        redemService.deleteRedem(id);
        return ResponseEntity.noContent().build();
    }
}