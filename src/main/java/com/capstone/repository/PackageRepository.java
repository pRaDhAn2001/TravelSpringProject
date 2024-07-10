package com.capstone.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capstone.model.Package;

public interface PackageRepository extends JpaRepository<Package, Long> {

}
