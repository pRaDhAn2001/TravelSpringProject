package com.capstone.controller;

import com.capstone.model.Enquiry;

import com.capstone.model.Package;

import com.capstone.model.User;

import com.capstone.service.EnquiryService;

import com.capstone.service.PackageService;

import com.capstone.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

import java.util.List;

@Controller

public class EnquiryController {

	@Autowired

	private EnquiryService enquiryService;

	@Autowired

	private PackageService packageService;

	@Autowired

	private UserService userService;

	@GetMapping("/enquiry")

	public String showEnquiryForm(Model model, HttpSession session) {

		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login"; // redirect to login if user is not logged in

		}

		List<Package> packages = packageService.getAllPackages();

		User user = userService.findUserById(userId);

		model.addAttribute("user", user);

		model.addAttribute("packages", packages);

		return "enquiry";

	}

	@PostMapping("/submit_enquiry")

	public String submitEnquiry(@RequestParam("packageId") Long packageId, @RequestParam("message") String message,

			@RequestParam("name") String name, @RequestParam("mobileNumber") Long mobileNumber,

			@RequestParam("email") String email, HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login";

		}

		User user = userService.findUserById(userId);

		Package travelPackage = packageService.getPackageById(packageId);

		Enquiry enquiry = new Enquiry();

		enquiry.setUser(user);

		enquiry.setTravelPackage(travelPackage);

		enquiry.setMessage(message);

		enquiry.setName(name);

		enquiry.setEmail(email);

		enquiry.setMobileNumber(mobileNumber);

		enquiry.setDateCreated(new java.util.Date());

		enquiryService.saveEnquiry(enquiry);

		model.addAttribute("successMessage", "Enquiry sent successfully!");

		return "redirect:/user_dashboard";

	}

	@GetMapping("/viewEnquiries")

	public String viewEnquiries(Model model, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		List<Enquiry> enquiries = enquiryService.getAllEnquiries();

		model.addAttribute("enquiries", enquiries);

		return "view_enquiries";

	}

}
