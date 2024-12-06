package com.waste.transport.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "services")
public class Service {
    @Id
    private Long id;

    @Column(name = "wtype", nullable = false)
    private String wtype;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "service")
    private List<Calendar> calendars;

    @OneToMany(mappedBy = "service")
    private List<Resdem> redems;
}