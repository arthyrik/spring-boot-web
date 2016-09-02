package com.example.service.impl;

import com.example.domain.Bike;
import com.example.repository.BikeRepository;
import com.example.service.BikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
class BikeServiceImpl implements BikeService {

    @Autowired
    private BikeRepository bikeRepository;

    @Override
    public List<Bike> findAll() {
        return bikeRepository.findAll();
    }

    @Override
    public Bike findOne(Long id) {
        return bikeRepository.findOne(id);
    }
}
