package com.waste.transport.service;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.waste.transport.model.Resdem;
import com.waste.transport.model.User;
import com.waste.transport.repository.ResdemRepository;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ResdemService {
    private final ResdemRepository redemRepository;

    @Transactional(readOnly = true)
    public List<Resdem> getAllRedems() {
        return redemRepository.findAll();
    }

    @Transactional(readOnly = true)
    public List<Resdem> getRedemsByUser(User user) {
        return redemRepository.findByUser(user);
    }

    @Transactional(readOnly = true)
    public List<Resdem> getRedemsByDateRange(LocalDate startDate, LocalDate endDate) {
        return redemRepository.findByDemandBetween(startDate, endDate);
    }

    @Transactional
    public Resdem createRedem(Resdem redem) {
        return redemRepository.save(redem);
    }

    @Transactional
    public void deleteRedem(Long id) {
        redemRepository.deleteById(id);
    }
}
