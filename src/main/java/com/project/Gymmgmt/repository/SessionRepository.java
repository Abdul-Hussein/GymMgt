package com.project.Gymmgmt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.Gymmgmt.model.Package;
import com.project.Gymmgmt.model.Session;

public interface SessionRepository extends JpaRepository<Session, Integer> {
	List<Session> findSessionById(int id);
}
