package com.waste.transport.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "calendar")
public class Calendar {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "sdate", nullable = false)
    private LocalDate sdate;

    @Column(name = "servid", nullable = false)
    private Long servid;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "servid", insertable = false, updatable = false)
    private Service service;
}
