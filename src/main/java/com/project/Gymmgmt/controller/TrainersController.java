package com.project.Gymmgmt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.Gymmgmt.dto.TrainerDto;
import com.project.Gymmgmt.model.Trainer;
import com.project.Gymmgmt.service.TrainersService;

@RestController
@RequestMapping("/trainers")
public class TrainersController {

	@Autowired
	TrainersService service;

	@PostMapping("/saveTrainerDetails")
	public boolean saveTrainerDetails(@RequestBody TrainerDto trainerDto) {
		return service.saveTrainerDetails(trainerDto);
	}

	@GetMapping("/getAllTrainerDetails")
	public List<Trainer> getAllTrainerDetails() {
		return service.getAllTrainers();
	}

	@PostMapping("/updateDetails")
	public boolean updateTrainerDetails(@RequestBody TrainerDto trainerDto) {
		return service.updateTrainerDetails(trainerDto);
	}

	@GetMapping("/getTrainerById")
	public Trainer getTrainerById(@RequestParam Integer id) {
		return service.getTrainerById(id);
	}
	
	@DeleteMapping("/deleteTrainer/{id}")
	public boolean deleteTrainer(@PathVariable Integer id) {
		return service.deleteTrainer(id);
	}
}
