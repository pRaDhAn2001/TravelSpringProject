package com.capstone.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.capstone.model.User;
import com.capstone.service.UserService;

@Controller

public class UserController {

	@Autowired

	private UserService userService;

	@GetMapping("/user_dashboard")

	public String showUserDashboard(HttpSession session, HttpServletResponse response, Model model) {


		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	    response.setDateHeader("Expires", 0); // Proxies.
	    
		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login";

		}

		User user = userService.findUserById(userId);

		model.addAttribute("user", user);

		return "user_dashboard";

	}

	@GetMapping("/admin_dashboard")

	public String showAdminDashboard(HttpSession session, HttpServletResponse response) {
		

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	    response.setDateHeader("Expires", 0); // Proxies.

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		return "admin_dashboard";

	}

	@GetMapping("/viewDetails")

	public String viewDetails(HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		User user = userService.findUserById(userId);

		model.addAttribute("user", user);

		return "view_details";

	}

	@GetMapping("/updateDetailsForm")

	public String updateDetailsForm(HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		User user = userService.findUserById(userId);

		model.addAttribute("user", user);

		return "update_details";

	}

	@PostMapping("/updateDetails")

	public String updateDetails(@RequestParam("name") String name, @RequestParam("age") int age,

			@RequestParam("mobileNumber") Long mobileNumber, @RequestParam("email") String email,

			@RequestParam("address") String address, HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		User user = userService.findUserById(userId);

		user.setName(name);

		user.setAge(age);

		user.setMobileNumber(mobileNumber);

		user.setEmail(email);

		user.setAddress(address);

		userService.saveUser(user);

		model.addAttribute("message", "Details updated successfully.");

		return "redirect:/user_dashboard";

	}

	@GetMapping("/viewAllUsers")

	public String viewAllUsers(Model model, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		List<User> users = userService.findAllUsers();

		model.addAttribute("users", users);

		return "view_all_users";

	}

	@GetMapping("/updateUser")

	public String updateUserForm(@RequestParam("id") Long userId, Model model, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		User user = userService.findUserById(userId);

		model.addAttribute("user", user);

		return "update_user";

	}

	@PostMapping("/updateUser")

	public String updateUser(@ModelAttribute User updatedUser, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		userService.updateUser(updatedUser);

		return "redirect:/viewAllUsers";

	}

	@GetMapping("/deleteUser")

	public String deleteUser(@RequestParam("id") Long userId, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		userService.deleteUser(userId);

		return "redirect:/viewAllUsers";

	}

	@GetMapping("/addNewUser")

	public String showAddNewUserForm(HttpSession session, Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		model.addAttribute("user", new User());

		return "add_new_user";

	}

	@PostMapping("/addNewUser")

	public String addNewUser(@ModelAttribute("user") User user, @RequestParam("confirmPassword") String confirmPassword,

			HttpSession session, Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		if (!user.getPassword().equals(confirmPassword)) {

			model.addAttribute("error", "Passwords do not match.");

			return "add_new_user";

		}

		userService.saveUser(user);

		return "redirect:/admin_dashboard";

	}

}