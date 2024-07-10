package com.capstone.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;

import com.capstone.model.Package;

import com.capstone.model.User;

import com.capstone.service.PackageService;

import com.capstone.service.UserService;

@Controller

public class PackageController {

	@Autowired

	private PackageService packageService;

	@Autowired

	private UserService userService;

	@GetMapping("/packages")

	public String listAllPackages(Model model, HttpSession session) {

		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login";

		}

		User user = userService.findUserById(userId);

		model.addAttribute("user", user);

		List<Package> packages = packageService.getAllPackages();

		model.addAttribute("packages", packages);

		return "packages_list";

	}

	@GetMapping("/addPackage")

	public String showAddPackageForm(HttpSession session, Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		model.addAttribute("package", new Package());

		return "add_package";

	}

	@PostMapping("/addPackage")

	public String addPackage(HttpSession session, @ModelAttribute("package") Package travelPackage) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		packageService.savePackage(travelPackage);

		return "redirect:/admin_dashboard";

	}

	@GetMapping("/updatePackage/{id}")

	public String showUpdatePackageForm(@PathVariable("id") Long id, Model model, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		Package pkg = packageService.getPackageById(id);

		model.addAttribute("pkg", pkg);

		return "update_package";

	}

	@PostMapping("/updatePackage")

	public String updatePackage(@ModelAttribute("pkg") Package pkg, HttpSession session, Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		Package existingPackage = packageService.getPackageById(pkg.getId());

		if (existingPackage != null) {

			existingPackage.setName(pkg.getName());

			existingPackage.setDescription(pkg.getDescription());

			existingPackage.setPrice(pkg.getPrice());

			existingPackage.setRatings(pkg.getRatings());

			packageService.updatePackage(existingPackage);

		}

		return "redirect:/admin_dashboard";

	}

	@GetMapping("/deletePackage/{id}")

	public String deletePackage(@PathVariable("id") Long id, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		packageService.deletePackage(id);

		return "redirect:/admin_dashboard";

	}

}
