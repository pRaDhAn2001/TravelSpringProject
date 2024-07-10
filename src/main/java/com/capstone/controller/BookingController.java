package com.capstone.controller;

import java.io.File;

import java.io.IOException;

import java.util.Date;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.format.annotation.DateTimeFormat;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;

import com.capstone.model.Booking;

import com.capstone.model.Package;

import com.capstone.model.User;

import com.capstone.service.BookingService;

import com.capstone.service.PackageService;

import com.capstone.service.UserService;

@Controller

public class BookingController {

	@Autowired

	private BookingService bookingService;

	@Autowired

	private PackageService packageService;

	@Autowired

	private UserService userService;

	@GetMapping("/addBooking")

	public String showAddBookingForm(HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login";

		}

		List<Package> packages = packageService.getAllPackages();

		User user = userService.findUserById(userId);

		model.addAttribute("packages", packages);

		model.addAttribute("user", user);

		return "add_new_booking";

	}

	@PostMapping("/addBooking")

	public String addBooking(@RequestParam("packageId") Long packageId, @RequestParam("name") String name,

			@RequestParam("age") int age, @RequestParam("mobileNumber") Long mobileNumber,

			@RequestParam("email") String email, @RequestParam("address") String address,

			@RequestParam("numberOfAdults") int numberOfAdults, @RequestParam("numberOfChildren") int numberOfChildren,

			@RequestParam("travelDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date travelDate,

			@RequestParam("idProof") MultipartFile idProof, HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login";

		}

		User user = userService.findUserById(userId);

		Package travelPackage = packageService.getPackageById(packageId);

		Booking booking = new Booking();

		booking.setUser(user);

		booking.setTravelPackage(travelPackage);

		booking.setName(name);

		booking.setAge(age);

		booking.setMobileNumber(mobileNumber);

		booking.setEmail(email);

		booking.setAddress(address);

		booking.setNumberOfAdults(numberOfAdults);

		booking.setNumberOfChildren(numberOfChildren);

		booking.setTravelDate(travelDate);

		double totalPrice = travelPackage.getPrice() * numberOfAdults

				+ (numberOfChildren * (travelPackage.getPrice() * 0.5));

		booking.setTotalPrice(totalPrice);

		if (!idProof.isEmpty()) {

			try {

				String uploadDir = "C:\\Users\\Sarbasish\\Documents\\Uploads/";

				File uploadDirFile = new File(uploadDir);

				if (!uploadDirFile.exists()) {

					uploadDirFile.mkdirs();

				}

				String filePath = uploadDir + idProof.getOriginalFilename();

				idProof.transferTo(new File(filePath));

				booking.setIdProofPath(idProof.getOriginalFilename());

			} catch (IOException e) {

				e.printStackTrace();

				model.addAttribute("errorMessage", "Failed to upload ID proof.");

				return "add_new_booking";

			}

		}

		bookingService.saveBooking(booking);

		session.setAttribute("booking", booking);

		return "redirect:/bookingsuccess";

	}

	@GetMapping("/bookingsuccess")

	public String showBookingSuccess(HttpSession session, Model model) {

		Booking booking = (Booking) session.getAttribute("booking");

		if (booking == null) {

			return "redirect:/user_dashboard";

		}

		model.addAttribute("booking", booking);

		session.removeAttribute("booking");

		return "bookingsuccess";

	}

	@GetMapping("/viewBookings")

	public String viewBookings(HttpSession session, Model model) {

		Long userId = (Long) session.getAttribute("userId");

		if (userId == null) {

			return "redirect:/login";

		}

		User user = userService.findUserById(userId);

		List<Booking> bookings = bookingService.findBookingsByUser(user);

		model.addAttribute("bookings", bookings);

		return "view_bookings";

	}

	@GetMapping("/addBookingAdmin")

	public String showAddBookingFormAdmin(HttpSession session, Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		model.addAttribute("booking", new Booking());

		return "new_booking_admin";

	}

	@PostMapping("/addBookingAdmin")

	public String addBooking(HttpSession session, @ModelAttribute("booking") Booking booking,

			@RequestParam("idProof") MultipartFile idProof, Model model, BindingResult result) {

		if (result.hasErrors()) {

			model.addAttribute("errorMessage", "Invalid input");

			return "new_booking_admin";

		}

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		User user = userService.findUserById(booking.getUser().getId());

		Package travelPackage = packageService.getPackageById(booking.getTravelPackage().getId());

		if (user != null && travelPackage != null) {

			booking.setUser(user);

			booking.setName(user.getName());

			booking.setAge(user.getAge());

			booking.setMobileNumber(user.getMobileNumber());

			booking.setEmail(user.getEmail());

			booking.setAddress(user.getAddress());

			booking.setTravelPackage(travelPackage);

			double totalPrice = travelPackage.getPrice() * booking.getNumberOfAdults()

					+ (booking.getNumberOfChildren() * (travelPackage.getPrice() * 0.5));

			booking.setTotalPrice(totalPrice);

			if (!idProof.isEmpty()) {

				try {

					String uploadDir = "C:\\Users\\Sarbasish\\Documents\\Uploads/";

					File uploadDirFile = new File(uploadDir);

					if (!uploadDirFile.exists()) {

						uploadDirFile.mkdirs();

					}

					String filePath = uploadDir + idProof.getOriginalFilename();

					idProof.transferTo(new File(filePath));

					booking.setIdProofPath(idProof.getOriginalFilename());

				} catch (IOException e) {

					e.printStackTrace();

					model.addAttribute("errorMessage", "Failed to upload ID proof.");

					return "new_booking_admin";

				}

			}

			bookingService.saveBookingByAdmin(booking);

		}

		return "redirect:/admin_dashboard";

	}

	@GetMapping("/viewAllBookings")

	public String viewAllBookings(HttpSession session, Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		List<Booking> bookings = bookingService.getAllBookings();

		model.addAttribute("bookings", bookings);

		return "view_all_bookings";

	}

	@GetMapping("/updateBooking/{id}")

	public String showUpdateBookingForm(@PathVariable("id") Long id, Model model, HttpSession session) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		Booking booking = bookingService.getBookingById(id);

		if (booking != null) {

			model.addAttribute("booking", booking);

		} else {

			model.addAttribute("error", "Booking not found.");

			return "redirect:/viewAllBookings";

		}

		return "update_booking";

	}

	@PostMapping("/updateBooking")

	public String updateBooking(HttpSession session, @ModelAttribute("booking") Booking booking, BindingResult result,

			Model model) {

		if (!"admin".equals(session.getAttribute("username"))) {

			return "redirect:/login";

		}

		if (result.hasErrors()) {

			model.addAttribute("error", "Invalid input");

			return "update_booking";

		}

		Booking existingBooking = bookingService.getBookingById(booking.getId());

		if (existingBooking == null) {

			model.addAttribute("error", "Booking not found.");

			return "update_booking";

		}

		User user = userService.findUserById(existingBooking.getUser().getId());

		Package travelPackage = packageService.getPackageById(existingBooking.getTravelPackage().getId());

		if (user != null && travelPackage != null) {

			existingBooking.setNumberOfAdults(booking.getNumberOfAdults());

			existingBooking.setNumberOfChildren(booking.getNumberOfChildren());

			existingBooking.setTravelDate(booking.getTravelDate());

			double totalPrice = travelPackage.getPrice() * booking.getNumberOfAdults()

					+ (booking.getNumberOfChildren() * (travelPackage.getPrice() * 0.5));

			existingBooking.setTotalPrice(totalPrice);

			existingBooking.setIdProof(existingBooking.getIdProof());

			existingBooking.setAge(user.getAge());

			existingBooking.setAddress(user.getAddress());

			existingBooking.setEmail(user.getEmail());

			existingBooking.setMobileNumber(user.getMobileNumber());

			bookingService.saveBookingByAdmin(existingBooking);

		} else {

			model.addAttribute("error", "Invalid user or package.");

			return "update_booking";

		}

		return "redirect:/admin_dashboard";

	}

	@GetMapping("/deleteBooking/{id}")

	public String deleteBooking(@PathVariable Long id, HttpSession session) {

		if (session.getAttribute("userId") == null) {

			return "redirect:/login"; // Redirect to login page if not logged in

		}

		bookingService.deleteBooking(id);

		return "redirect:/viewAllBookings";

	}

}
