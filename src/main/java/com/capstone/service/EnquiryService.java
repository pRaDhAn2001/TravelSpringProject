package com.capstone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.capstone.model.Enquiry;

import com.capstone.repository.EnquiryRepository;

@Service

public class EnquiryService {

	@Autowired

	private EnquiryRepository enquiryRepository;

	public Enquiry saveEnquiry(Enquiry enquiry) {

		return enquiryRepository.save(enquiry);

	}

	public List<Enquiry> getAllEnquiries() {

		return enquiryRepository.findAll();

	}

	public List<Enquiry> getEnquiriesByPackageId(Long packageId) {

		return enquiryRepository.findByTravelPackageId(packageId);

	}

	public Enquiry getEnquiryById(Long id) {

		return enquiryRepository.findById(id).orElse(null);

	}

	public void deleteEnquiry(Long id) {

		enquiryRepository.deleteById(id);

	}

}
