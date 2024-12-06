package com.waste.transport.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.waste.transport.model.ContactMessage;
import com.waste.transport.repository.MessageRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class MessageService {
    private final MessageRepository messageRepository;

    public MessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    public ContactMessage saveMessage(ContactMessage message) {
        return messageRepository.save(message);
    }

    public List<ContactMessage> getAllMessages() {
        return messageRepository.findAllByOrderBySentAtDesc();
    }
}
