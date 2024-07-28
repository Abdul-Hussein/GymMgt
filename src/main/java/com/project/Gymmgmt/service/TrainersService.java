package com.project.Gymmgmt.service;

import java.util.List;

import com.project.Gymmgmt.dto.TrainerDto;
import com.project.Gymmgmt.model.Trainer;

public interface TrainersService {
	List<Trainer> getAllTrainers();

	boolean saveTrainerDetails(TrainerDto trainer);

	boolean updateTrainerDetails(TrainerDto trainer);

	Trainer getTrainerById(int id);
	
	boolean deleteTrainer(Integer id);
}
