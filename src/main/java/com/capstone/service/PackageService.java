package com.capstone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.capstone.repository.PackageRepository;

import com.capstone.model.Package;

@Service

public class PackageService {

	@Autowired

	private PackageRepository packageRepository;

	public List<Package> getAllPackages() {

		return packageRepository.findAll();

	}

	public Package getPackageById(Long id) {

		return packageRepository.findById(id).orElse(null);

	}

	public void savePackage(Package travelPackage) {

		packageRepository.save(travelPackage);

	}

	public void deletePackage(Long id) {

		packageRepository.deleteById(id);

	}

	public void updatePackage(Package pkg) {

		packageRepository.save(pkg);

	}

}
