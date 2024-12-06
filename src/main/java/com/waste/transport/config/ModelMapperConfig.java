package com.waste.transport.config;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.waste.transport.dto.CalendarDTO;
import com.waste.transport.dto.ResdemDTO;
import com.waste.transport.dto.ServiceDTO;
import com.waste.transport.model.Calendar;
import com.waste.transport.model.Resdem;
import com.waste.transport.model.Service;

@Configuration
public class ModelMapperConfig {

    @Bean
    public ModelMapper modelMapper() {
        ModelMapper modelMapper = new ModelMapper();

        // Configuration for strict mapping
        modelMapper.getConfiguration()
                .setMatchingStrategy(MatchingStrategies.STRICT)
                .setSkipNullEnabled(true);

        // Custom mappings for ServiceDTO
        modelMapper.typeMap(Service.class, ServiceDTO.class)
                .addMappings(mapper -> {
                    mapper.map(Service::getWtype, ServiceDTO::setWtype);
                    mapper.map(Service::getDescription, ServiceDTO::setDescription);
                });

        // Custom mappings for CalendarDTO
        modelMapper.typeMap(Calendar.class, CalendarDTO.class)
                .addMappings(mapper -> {
                    mapper.map(Calendar::getSdate, CalendarDTO::setSdate);
                    mapper.map(src -> src.getService().getWtype(), CalendarDTO::setServiceType);
                });

        // Custom mappings for RedemDTO
        modelMapper.typeMap(Resdem.class, ResdemDTO.class)
                .addMappings(mapper -> {
                    mapper.map(Resdem::getDemand, ResdemDTO::setDemand);
                    mapper.map(src -> src.getUser().getId(), ResdemDTO::setUserId);
                    mapper.map(src -> src.getService().getWtype(), ResdemDTO::setServiceType);
                });

        return modelMapper;
    }
}
