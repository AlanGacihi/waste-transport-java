package com.waste.transport.dto;

import lombok.Data;
import java.time.LocalDate;
import jakarta.validation.constraints.NotNull;

@Data
public class CreateCalendarRequest {
    @NotNull(message = "Service date is required")
    private LocalDate sdate;

    @NotNull(message = "Service ID is required")
    private Long servid;
}
