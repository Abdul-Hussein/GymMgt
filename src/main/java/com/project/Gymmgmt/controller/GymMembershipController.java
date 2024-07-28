package com.project.Gymmgmt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.Gymmgmt.dto.GymMembershipDto;
import com.project.Gymmgmt.model.GymMembership;
import com.project.Gymmgmt.service.GymMembershipService;

@RestController
@RequestMapping("/api/gymMemberships")
public class GymMembershipController {

	private final GymMembershipService service;

	@Autowired
	public GymMembershipController(GymMembershipService service) {
		this.service = service;
	}

	@PostMapping("/save")
	public ResponseEntity<Boolean> saveGymMembership(@RequestBody GymMembershipDto gymMembershipDto) {
		boolean isSaved = service.saveGymMembership(gymMembershipDto);
		if (isSaved) {
			return new ResponseEntity<>(true, HttpStatus.CREATED);
		} else {
			return new ResponseEntity<>(false, HttpStatus.BAD_REQUEST);
		}
	}

	@GetMapping("/getById")
	public ResponseEntity<GymMembership> getGymMembershipById(@RequestParam Integer id) {
		GymMembership gymMembership = service.getGymMembershipById(id);
		if (gymMembership != null) {
			return new ResponseEntity<>(gymMembership, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}

	@PostMapping("/update")
	public ResponseEntity<Boolean> updateGymMembership(@RequestBody GymMembershipDto gymMembershipDto) {
		boolean isUpdated = service.updateGymMembership(gymMembershipDto);
		if (isUpdated) {
			return new ResponseEntity<>(true, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(false, HttpStatus.NOT_FOUND);
		}
	}

	@GetMapping("/getAllDetails")
	public ResponseEntity<List<GymMembership>> getAllGymMemberships() {
		List<GymMembership> gymMemberships = service.getGymMembership();
		if (gymMemberships != null && !gymMemberships.isEmpty()) {
			return new ResponseEntity<>(gymMemberships, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

	@DeleteMapping("/delete/{id}")
	public ResponseEntity<Boolean> deleteMembership(@PathVariable Integer id) {
		boolean isDeleted = service.deleteGymMembership(id);

		if (isDeleted) {
			return new ResponseEntity<>(true, HttpStatus.ACCEPTED);
		} else {
			return new ResponseEntity<>(false, HttpStatus.NOT_FOUND);
		}
	}

}
