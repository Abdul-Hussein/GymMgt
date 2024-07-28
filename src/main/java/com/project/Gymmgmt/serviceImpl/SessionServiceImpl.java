package com.project.Gymmgmt.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.Gymmgmt.dto.SessionDto;
import com.project.Gymmgmt.model.Session;
import com.project.Gymmgmt.repository.SessionRepository;
import com.project.Gymmgmt.service.SessionService;

@Service
public class SessionServiceImpl implements SessionService {

	@Autowired
	private SessionRepository sessionRepo;

	@Override
	public boolean addSession(SessionDto session) {
		try {
			Session newSession = new Session();
			newSession.setDuration(session.getDuration());
			newSession.setName(session.getName());
			newSession.setPrice(session.getPrice());
			sessionRepo.save(newSession);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateSession(SessionDto session) {
		try {
			Optional<Session> optionalSession = sessionRepo.findById(session.getId());
			if (optionalSession.isPresent()) {
				Session existingSession = optionalSession.get();
				existingSession.setName(session.getName());
				existingSession.setPrice(session.getPrice());
				existingSession.setDuration(session.getDuration());
				sessionRepo.save(existingSession);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Session> getAllSessions() {
		List<Session> response = sessionRepo.findAll();
		return response;
	}

	@Override
	public Session getSessionById(Integer id) {
		Optional<Session> session = sessionRepo.findById(id);
		return session.orElse(null);
	}

	@Override
	public boolean deleteSession(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (sessionRepo.existsById(id)) {
				sessionRepo.deleteById(id);
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
