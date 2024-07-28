package com.project.Gymmgmt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.Gymmgmt.model.Trainer;

public interface TrainersRepository extends JpaRepository<Trainer, Integer> {
	
}
