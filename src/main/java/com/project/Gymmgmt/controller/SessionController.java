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
import org.springframework.web.bind.annotation.RestController;

import com.project.Gymmgmt.dto.SessionDto;
import com.project.Gymmgmt.model.Session;
import com.project.Gymmgmt.service.SessionService;

@RestController
@RequestMapping("/api/sessions")
public class SessionController {

	private final SessionService service;

	@Autowired
	public SessionController(SessionService service) {
		this.service = service;
	}

	@PostMapping("/addSession")
	public ResponseEntity<Boolean> addSession(@RequestBody SessionDto sessionDto) {
		boolean isAdded = service.addSession(sessionDto);
		if (isAdded) {
			return new ResponseEntity<>(true, HttpStatus.CREATED);
		} else {
			return new ResponseEntity<>(false, HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping("/updateSession")
	public ResponseEntity<Boolean> updateSession(@RequestBody SessionDto sessionDto) {
		boolean isUpdated = service.updateSession(sessionDto);
		if (isUpdated) {
			return new ResponseEntity<>(true, HttpStatus.OK);
		} else {
			return new ResponseEntity<>(false, HttpStatus.NOT_FOUND);
		}
	}

	@GetMapping("/getSession")
	public List<Session> getAllSessions() {
		return service.getAllSessions();
	}

	@GetMapping("/getSessionById")
	public Session getSessionId(Integer id) {
		return service.getSessionById(id);
	}
	
	@DeleteMapping("/deleteSession/{id}")
	public boolean deleteSession(@PathVariable Integer id) {
		return service.deleteSession(id);
	}
}
