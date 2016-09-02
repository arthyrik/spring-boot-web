package com.example.service;


import com.example.domain.Bike;

import java.util.List;

public interface BikeService {

    List<Bike> findAll();

    Bike findOne(Long id);
}
