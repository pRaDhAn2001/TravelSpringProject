package com.capstone.model;

import java.util.Date;

import javax.persistence.Column;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;

import javax.persistence.Temporal;

import javax.persistence.TemporalType;

@Entity

public class Enquiry {

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long id;

	private String name;

	private String email;

	private Long mobileNumber;

	@Column(columnDefinition = "TEXT")

	private String message;

	@Temporal(TemporalType.TIMESTAMP)

	private Date dateCreated;

	@ManyToOne

	@JoinColumn(name = "package_id", nullable = false)

	private Package travelPackage;

	@ManyToOne

	@JoinColumn(name = "user_id", nullable = false)

	private User user;

	public Enquiry() {

		super();

	}

	public Enquiry(Long id, String name, String email, Long mobileNumber, String message, Date dateCreated,

			Package travelPackage, User user) {

		super();

		this.id = id;

		this.name = name;

		this.email = email;

		this.mobileNumber = mobileNumber;

		this.message = message;

		this.dateCreated = dateCreated;

		this.travelPackage = travelPackage;

		this.user = user;

	}

	public Date getDateCreated() {

		return dateCreated;

	}

	public void setDateCreated(Date dateCreated) {

		this.dateCreated = dateCreated;

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

	public String getEmail() {

		return email;

	}

	public void setEmail(String email) {

		this.email = email;

	}

	public Long getMobileNumber() {

		return mobileNumber;

	}

	public void setMobileNumber(Long mobileNumber) {

		this.mobileNumber = mobileNumber;

	}

	public String getMessage() {

		return message;

	}

	public void setMessage(String message) {

		this.message = message;

	}

	public Package getTravelPackage() {

		return travelPackage;

	}

	public void setTravelPackage(Package travelPackage) {

		this.travelPackage = travelPackage;

	}

	public User getUser() {

		return user;

	}

	public void setUser(User user) {

		this.user = user;

	}

}
