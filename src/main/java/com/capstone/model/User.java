package com.capstone.model;

import java.util.ArrayList;

import java.util.List;

import javax.persistence.CascadeType;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.OneToMany;

@Entity

public class User {

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long id;

	private String name;

	private String gender;

	private Long mobileNumber;

	private String email;

	private int age;

	private String address;

	private String preference;

	private String username;

	private String password;

	private String confirmPassword;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)

	private List<Booking> bookings = new ArrayList<>();

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)

	private List<Enquiry> enquiries = new ArrayList<>();

	public User() {

		super();

	}

	public User(Long id, String name, String gender, Long mobileNumber, String email, int age, String address,

			String preference, String username, String password, String confirmPassword, List<Booking> bookings,

			List<Enquiry> enquiries) {

		super();

		this.id = id;

		this.name = name;

		this.gender = gender;

		this.mobileNumber = mobileNumber;

		this.email = email;

		this.age = age;

		this.address = address;

		this.preference = preference;

		this.username = username;

		this.password = password;

		this.confirmPassword = confirmPassword;

		this.bookings = bookings;

		this.enquiries = enquiries;

	}

	public List<Booking> getBookings() {

		return bookings;

	}

	public void setBookings(List<Booking> bookings) {

		this.bookings = bookings;

	}

	public List<Enquiry> getEnquiries() {

		return enquiries;

	}

	public void setEnquiries(List<Enquiry> enquiries) {

		this.enquiries = enquiries;

	}

	public Long getId() {

		return id;

	}

	public void setId(Long id) {

		this.id = id;

	}

	public String getName() {

		return name;

	}

	public void setName(String name) {

		this.name = name;

	}

	public Long getMobileNumber() {

		return mobileNumber;

	}

	public void setMobileNumber(Long mobileNumber) {

		this.mobileNumber = mobileNumber;

	}

	public String getEmail() {

		return email;

	}

	public void setEmail(String email) {

		this.email = email;

	}

	public String getPreference() {

		return preference;

	}

	public void setPreference(String preference) {

		this.preference = preference;

	}

	public String getUsername() {

		return username;

	}

	public void setUsername(String username) {

		this.username = username;

	}

	public String getPassword() {

		return password;

	}

	public void setPassword(String password) {

		this.password = password;

	}

	public String getConfirmPassword() {

		return confirmPassword;

	}

	public void setConfirmPassword(String confirmPassword) {

		this.confirmPassword = confirmPassword;

	}

	public String getGender() {

		return gender;

	}

	public void setGender(String gender) {

		this.gender = gender;

	}

	public int getAge() {

		return age;

	}

	public void setAge(int age) {

		this.age = age;

	}

	public String getAddress() {

		return address;

	}

	public void setAddress(String address) {

		this.address = address;

	}

}
