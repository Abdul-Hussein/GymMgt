package com.project.Gymmgmt.service;

import java.util.List;

import com.project.Gymmgmt.dto.SessionDto;
import com.project.Gymmgmt.model.Package;
import com.project.Gymmgmt.model.Session;

public interface SessionService {
	boolean addSession(SessionDto session);

	boolean updateSession(SessionDto session);

	List<Session> getAllSessions();
	
	Session getSessionById(Integer id);
	
	boolean deleteSession(Integer id);

}
