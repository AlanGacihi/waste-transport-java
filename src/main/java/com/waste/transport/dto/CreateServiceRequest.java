package com.waste.transport.dto;

import lombok.Data;
import jakarta.validation.constraints.NotBlank;

@Data
public class CreateServiceRequest {
    @NotBlank(message = "Waste type is required")
    private String wtype;

    private String description;
}
