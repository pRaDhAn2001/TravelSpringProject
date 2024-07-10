package com.capstone.controller;

import javax.servlet.http.HttpServletRequest;

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

public class HomeController {

	@Autowired

	private UserService userService;

	@GetMapping(value = "/")

	public String showHomePage() {

		return "home";

	}

	@GetMapping("/login")
	public String showLoginPage(HttpServletResponse response, HttpSession session) {
		// Set cache control headers
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		
		if (session.getAttribute("userId") != null) {
			if ("admin".equals(session.getAttribute("username"))) {
				return "redirect:/admin_dashboard";
			}
			return "redirect:/user_dashboard";
		}

		return "login";
	}

	@PostMapping("/processLogin")
	public String processLogin(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, HttpServletResponse response, Model model) {
		// Set cache control headers
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		User user = userService.findByUsernameAndPassword(username, password);

		if ("admin".equals(username) && "admin".equals(password)) {
			session.setAttribute("userId", 1L);
			session.setAttribute("username", "admin");
			return "redirect:/admin_dashboard";
		}

		if (user != null) {
			session.setAttribute("userId", user.getId());
			session.setAttribute("username", user.getName());
			return "redirect:/user_dashboard";
		} else {
			session.setAttribute("error", "Invalid Username or Password");
			return "redirect:/login";
		}
	}

	@GetMapping("/signup")

	public String showSignUpPage() {

		return "signup";

	}

	@PostMapping("/processSignUp")

	public String processSignUp(@ModelAttribute User user, @RequestParam String confirmPassword, Model model) {

		if (!user.getPassword().equals(confirmPassword)) {

			model.addAttribute("error", "Passwords do not match");

			return "signup";

		}

		userService.saveUser(user);

		return "redirect:/login";

	}

	@GetMapping("/logout")

	public String logout(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession(false);

		if (session != null) {

			session.invalidate();

		}

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		return "redirect:/";

	}

	@GetMapping("/about-us")

	public String aboutUs() {

		return "about-us";

	}

	@GetMapping("/terms-and-conditions")

	public String termsAndConditions() {

		return "terms-and-conditions";

	}

	@GetMapping("/cancellation-policy")

	public String cancellationPolicy() {

		return "cancellation-policy";

	}

}