package com.waste.transport.controller;

import lombok.RequiredArgsConstructor;

import org.modelmapper.ModelMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.waste.transport.dto.CreateServiceRequest;
import com.waste.transport.dto.ServiceDTO;
import com.waste.transport.model.Service;
import com.waste.transport.service.ServiceService;

import jakarta.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/services")
@RequiredArgsConstructor
public class ServiceController {
    private final ServiceService wasteService;
    private final ModelMapper modelMapper;

    @GetMapping
    public ResponseEntity<List<ServiceDTO>> getAllServices() {
        List<ServiceDTO> services = wasteService.getAllServices().stream()
                .map(service -> modelMapper.map(service, ServiceDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(services);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ServiceDTO> getServiceById(@PathVariable Long id) {
        Service service = wasteService.getServiceById(id);
        return ResponseEntity.ok(modelMapper.map(service, ServiceDTO.class));
    }

    @GetMapping("/search")
    public ResponseEntity<List<ServiceDTO>> searchServices(@RequestParam String wtype) {
        List<ServiceDTO> services = wasteService.searchServicesByType(wtype).stream()
                .map(service -> modelMapper.map(service, ServiceDTO.class))
                .collect(Collectors.toList());
        return ResponseEntity.ok(services);
    }

    @PostMapping
    public ResponseEntity<ServiceDTO> createService(@Valid @RequestBody CreateServiceRequest request) {
        Service service = modelMapper.map(request, Service.class);
        Service savedService = wasteService.createService(service);
        return ResponseEntity.ok(modelMapper.map(savedService, ServiceDTO.class));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteService(@PathVariable Long id) {
        wasteService.deleteService(id);
        return ResponseEntity.noContent().build();
    }
}
