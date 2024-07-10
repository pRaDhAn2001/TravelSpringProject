package com.capstone.model;

import java.util.List;

import javax.persistence.CascadeType;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.OneToMany;

@Entity

public class Package {

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long id;

	private String name;

	private String description;

	private double price;

	private float ratings;

	@OneToMany(mappedBy = "travelPackage", cascade = CascadeType.ALL, orphanRemoval = true)

	private List<Booking> bookings;

	@OneToMany(mappedBy = "travelPackage", cascade = CascadeType.ALL, orphanRemoval = true)

	private List<Enquiry> enquiries;

	public Package() {

		super();

	}

	public Package(Long id, String name, String description, double price, float ratings, List<Booking> bookings,

			List<Enquiry> enquiries) {

		super();

		this.id = id;

		this.name = name;

		this.description = description;

		this.price = price;

		this.ratings = ratings;

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

	public String getDescription() {

		return description;

	}

	public void setDescription(String description) {

		this.description = description;

	}

	public double getPrice() {

		return price;

	}

	public void setPrice(double price) {

		this.price = price;

	}

	public float getRatings() {

		return ratings;

	}

	public void setRatings(float ratings) {

		this.ratings = ratings;

	}

}
