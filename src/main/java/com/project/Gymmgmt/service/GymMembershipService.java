package com.project.Gymmgmt.service;

import java.util.List;

import com.project.Gymmgmt.dto.GymMembershipDto;
import com.project.Gymmgmt.model.GymMembership;

public interface GymMembershipService {
	boolean saveGymMembership(GymMembershipDto gymMembershipDto);

	boolean updateGymMembership(GymMembershipDto gymMembershipDto);

	public List<GymMembership> getGymMembership();

	GymMembership getGymMembershipById(Integer id);
	
	boolean deleteGymMembership(Integer id);
}

