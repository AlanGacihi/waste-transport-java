package com.waste.transport.dto;

import lombok.Data;
import java.time.LocalDate;

@Data
public class ResdemDTO {
    private Long id;
    private LocalDate demand;
    private Long servid;
    private Integer quantity;
    private Long userId;
    private String serviceType;
}
