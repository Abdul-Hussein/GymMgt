package com.project.Gymmgmt.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.Gymmgmt.dto.TrainerDto;
import com.project.Gymmgmt.model.Trainer;
import com.project.Gymmgmt.repository.TrainersRepository;
import com.project.Gymmgmt.service.TrainersService;

@Service
public class TrainersServiceImpl implements TrainersService {

	@Autowired
	private TrainersRepository trainerRepo;

	/**
	 * Retrieves a list of all trainers.
	 * 
	 * @return a list of Trainer objects
	 */
	@Override
	public List<Trainer> getAllTrainers() {
		List<Trainer> response = trainerRepo.findAll();
		return response;
	}

	/**
	 * Saves the details of a new trainer.
	 * 
	 * @param trainerDto the data transfer object containing trainer details
	 * @return true if the trainer was saved successfully, false otherwise
	 */
	@Override
	public boolean saveTrainerDetails(TrainerDto trainerDto) {
		try {
			Trainer train = new Trainer();
			train.setName(trainerDto.getName());
			train.setExperience(trainerDto.getExperience());
			train.setSpecialty(trainerDto.getSpecialty());
			train.setContactInfo(trainerDto.getContactInfo());
			trainerRepo.save(train);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * Updates the details of an existing trainer.
	 * 
	 * @param trainerDto the data transfer object containing updated trainer details
	 * @return true if the trainer was updated successfully, false otherwise
	 */
	@Override
	public boolean updateTrainerDetails(TrainerDto trainerDto) {
		try {
			Optional<Trainer> optionalTrainer = trainerRepo.findById(trainerDto.getId());
			if (optionalTrainer.isPresent()) {
				Trainer existingTrainer = optionalTrainer.get();
				existingTrainer.setName(trainerDto.getName());
				existingTrainer.setSpecialty(trainerDto.getSpecialty());
				existingTrainer.setContactInfo(trainerDto.getContactInfo());
				existingTrainer.setExperience(trainerDto.getExperience());
				trainerRepo.save(existingTrainer);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}

	/**
	 * Retrieves a trainer by their ID.
	 * 
	 * @param id the ID of the trainer
	 * @return the Trainer object if found, null otherwise
	 */
	@Override
	public Trainer getTrainerById(int id) {
		Optional<Trainer> trainer = trainerRepo.findById(id);
		return trainer.orElse(null);
	}

	@Override
	public boolean deleteTrainer(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (trainerRepo.existsById(id)) {
				trainerRepo.deleteById(id);
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
