package com.example.controller;

import com.example.domain.Bike;
import com.example.service.BikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/bikes")
public class BikeController {

    @Autowired
    private BikeService bikeService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Map<String, Object> model) {
        model.put("bikes", bikeService.findAll());

        return "bike/list";
    }

    @RequestMapping(value="/{bikeId}", method=RequestMethod.GET)
    public String getById(@PathVariable Long bikeId, Map<String, Object> model) {
        model.put("bike", bikeService.findOne(bikeId));

        return "bike/view";
    }

    @GetMapping(value="/create")
    public String create(Map<String, Object> model) {
        model.put("bike", new Bike());
        return "bike/create";
    }

    @PostMapping(value="/create")
    public String save(@ModelAttribute Bike bike, Map<String, Object> model) {
        bikeService.save(bike);
        model.put("id", bike.getId());

        return "bike/success";
    }

}
