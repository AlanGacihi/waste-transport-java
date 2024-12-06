package com.waste.transport.dto;

import lombok.Data;
import java.time.LocalDate;

@Data
public class CalendarDTO {
    private Long id;
    private LocalDate sdate;
    private Long servid;
    private String serviceType;
}
