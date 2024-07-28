package com.project.Gymmgmt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.Gymmgmt.dto.PackageDto;
import com.project.Gymmgmt.model.Package;
import com.project.Gymmgmt.service.PackageService;

@RestController
@RequestMapping("/packages")
public class PackageController {
	@Autowired
	PackageService service;

	@PostMapping("/savePackages")
	public boolean savePackages(@RequestBody PackageDto packageDto) {
		return service.savePackageDetails(packageDto);
	}

	@GetMapping("/getAllPackages")
	public List<Package> getPackages() {
		return service.getAllPackages();
	}

	@PostMapping("/updatePackages")
	public boolean updatePackages(@RequestBody PackageDto packageDto) {
		return service.updatePackage(packageDto);
	}

	@GetMapping("/getPackageId")
	public Package getPackagesById(@RequestParam Integer id) {
		return service.getPackageById(id);
	}
	
	@DeleteMapping("/deletePackage/{id}")
	public boolean deletePackage(@PathVariable Integer id) {
		return service.deletePackage(id);
	}
}
