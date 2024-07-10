package com.capstone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capstone.model.Enquiry;

public interface EnquiryRepository extends JpaRepository<Enquiry, Long> {

	List<Enquiry> findByTravelPackageId(Long packageId);

}
