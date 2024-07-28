package com.project.Gymmgmt.repository;

import java.util.List;
import com.project.Gymmgmt.model.Package;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PackageRepository extends JpaRepository<Package, Integer> {
	List<Package> findPackageById(int id);

}
