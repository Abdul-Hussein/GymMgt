package com.project.Gymmgmt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.Gymmgmt.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

	Admin findByUserNameAndPassword(String username, String password);
}
