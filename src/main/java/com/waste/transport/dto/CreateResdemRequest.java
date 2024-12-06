package com.waste.transport.dto;

import lombok.Data;
import jakarta.validation.constraints.NotNull;

import java.time.LocalDate;

import jakarta.validation.constraints.Min;

@Data
public class CreateResdemRequest {
    @NotNull(message = "Demand date is required")
    private LocalDate demand;

    @NotNull(message = "Service ID is required")
    private Long servid;

    @NotNull(message = "Quantity is required")
    @Min(value = 1, message = "Quantity must be at least 1")
    private Integer quantity;

    @NotNull(message = "User ID is required")
    private Long userId;
}