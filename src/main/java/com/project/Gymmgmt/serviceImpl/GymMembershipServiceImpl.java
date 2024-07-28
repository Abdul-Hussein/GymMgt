package com.project.Gymmgmt.serviceImpl;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.Gymmgmt.dto.GymMembershipDto;
import com.project.Gymmgmt.model.GymMembership;
import com.project.Gymmgmt.model.User;
import com.project.Gymmgmt.repository.GymMembershipRepository;
import com.project.Gymmgmt.repository.UserRepository;
import com.project.Gymmgmt.service.GymMembershipService;

@Service
public class GymMembershipServiceImpl implements GymMembershipService {

	private final GymMembershipRepository gymMembershipRepository;

	@Autowired
	HttpSession httpsession;

	@Autowired
	UserRepository userRepository;

	@Autowired
	public GymMembershipServiceImpl(GymMembershipRepository gymMembershipRepository) {
		this.gymMembershipRepository = gymMembershipRepository;
	}

	/**
	 * Save a new GymMembership entity to the repository.
	 * 
	 * @param gymMembershipDto The data transfer object containing gym membership
	 *                         details.
	 * @return true if the save operation is successful, false otherwise.
	 */
	@Override
	public boolean saveGymMembership(GymMembershipDto gymMembershipDto) {

		int userId = (Integer) httpsession.getAttribute("userId");

		try {

			java.util.Optional<User> optional = userRepository.findById(userId);

			GymMembership gymMembership = new GymMembership();
			gymMembership.setName(gymMembershipDto.getName());
			gymMembership.setMembershipNumber(gymMembershipDto.getMembershipNumber());
			gymMembership.setStartDate(gymMembershipDto.getStartDate());
			gymMembership.setEndDate(gymMembershipDto.getEndDate());
			gymMembership.setPhoneNumber(gymMembershipDto.getPhoneNumber());

			gymMembership.setUser(optional.get());

			gymMembershipRepository.save(gymMembership);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * Update an existing GymMembership entity in the repository.
	 * 
	 * @param gymMembershipDto The data transfer object containing updated gym
	 *                         membership details.
	 * @return true if the update operation is successful, false otherwise.
	 */
	@Override
	public boolean updateGymMembership(GymMembershipDto gymMembershipDto) {
		try {
			Optional<GymMembership> optionalGymMembership = gymMembershipRepository.findById(gymMembershipDto.getId());
			if (optionalGymMembership.isPresent()) {
				GymMembership gymMembership = optionalGymMembership.get();
				gymMembership.setName(gymMembershipDto.getName());
				gymMembership.setMembershipNumber(gymMembershipDto.getMembershipNumber());
				gymMembership.setStartDate(gymMembershipDto.getStartDate());
				gymMembership.setEndDate(gymMembershipDto.getEndDate());
				gymMembership.setPhoneNumber(gymMembershipDto.getPhoneNumber());

				gymMembershipRepository.save(gymMembership);
				return true;
			} else {
				System.out.println("GymMembership with ID " + gymMembershipDto.getId() + " not found.");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * Retrieve all GymMembership entities from the repository.
	 * 
	 * @return A list of all GymMembership entities.
	 */
	@Override
	public List<GymMembership> getGymMembership() {

		int userId = (Integer) httpsession.getAttribute("userId");

		String active = (String) httpsession.getAttribute("active");

		if (active.equals("member")) {

			return gymMembershipRepository.findByUserId(userId);

		} else {

			return gymMembershipRepository.findAll();

		}
	}

	/**
	 * Retrieve a GymMembership entity by its ID.
	 * 
	 * @param id The ID of the GymMembership to retrieve.
	 * @return The GymMembership entity with the specified ID.
	 * @throws RuntimeException if the GymMembership entity is not found.
	 */
	@Override
	public GymMembership getGymMembershipById(Integer id) {
		Optional<GymMembership> gymMembership = gymMembershipRepository.findById(id);
		if (gymMembership.isPresent()) {
			return gymMembership.get();
		} else {
			throw new RuntimeException("GymMembership with ID " + id + " not found.");
		}
	}

	
	@Override
	public boolean deleteGymMembership(Integer id) {
	    try {
	        if (gymMembershipRepository.existsById(id)) {
	            gymMembershipRepository.deleteById(id);
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
