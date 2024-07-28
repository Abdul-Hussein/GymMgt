package com.project.Gymmgmt.service;

import java.util.List;

import com.project.Gymmgmt.model.Package;

import com.project.Gymmgmt.dto.PackageDto;

public interface PackageService {
	boolean savePackageDetails(PackageDto gymMembershipDto);

	boolean updatePackage(PackageDto gymMembershipDto);

	public List<Package> getAllPackages();

	Package getPackageById(Integer id);
	
	boolean deletePackage(Integer id);
}
