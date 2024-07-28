package com.project.Gymmgmt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.Gymmgmt.model.GymMembership;

public interface GymMembershipRepository extends JpaRepository<GymMembership, Integer> {
	List<GymMembership> findGymMembershipById(int id);

	List<GymMembership> findByUserId(int id);
}
