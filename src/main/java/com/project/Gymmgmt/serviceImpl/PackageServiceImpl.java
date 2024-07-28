package com.project.Gymmgmt.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.project.Gymmgmt.dto.PackageDto;
import com.project.Gymmgmt.model.Package;
import com.project.Gymmgmt.repository.PackageRepository;
import com.project.Gymmgmt.service.PackageService;

@Service
public class PackageServiceImpl implements PackageService {

	@Autowired
	private PackageRepository packageRepository;

	/**
	 * Save package details.
	 *
	 * @param packageDto the package data transfer object
	 * @return true if the save operation is successful, false otherwise
	 */
	@Override
	public boolean savePackageDetails(PackageDto packageDto) {
		try {
			Package packages = new Package();
			packages.setDescription(packageDto.getDescription());
			packages.setDuration(packageDto.getDuration());
			packages.setPackageName(packageDto.getPackageName());
			packages.setPrice(packageDto.getPrice());
			packageRepository.save(packages);
			return true;
		} catch (DataAccessException e) {
			// Log the exception
			// logger.error("Failed to save package details: " + e.getMessage());
			e.printStackTrace(); // For development/debugging purposes
			return false;
		}
	}

	/**
	 * Update package details.
	 *
	 * @param packageDto the package data transfer object
	 * @return true if the update operation is successful, false otherwise
	 */
	@Override
	public boolean updatePackage(PackageDto packageDto) {
		try {
			Optional<Package> optionalPackage = packageRepository.findById(packageDto.getId());
			if (optionalPackage.isPresent()) {
				Package existingPackage = optionalPackage.get();
				existingPackage.setDescription(packageDto.getDescription());
				existingPackage.setDuration(packageDto.getDuration());
				existingPackage.setPackageName(packageDto.getPackageName());
				existingPackage.setPrice(packageDto.getPrice());
				packageRepository.save(existingPackage);
				return true;
			}
		} catch (DataAccessException e) {
			e.printStackTrace(); // Log the exception for debugging
			return false;
		}
		return false;
	}

	/**
	 * Get all packages.
	 *
	 * @return a list of all packages
	 */
	@Override
	public List<Package> getAllPackages() {
		return packageRepository.findAll();
	}

	/**
	 * Get package by ID.
	 *
	 * @param id the package ID
	 * @return the package if found, otherwise null
	 */
	@Override
	public Package getPackageById(Integer id) {
		Optional<Package> packages = packageRepository.findById(id);
		return packages.orElse(null);
	}

	@Override
	public boolean deletePackage(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (packageRepository.existsById(id)) {
				packageRepository.deleteById(id);
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}

	}
}
