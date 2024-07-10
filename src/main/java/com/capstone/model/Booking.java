package com.capstone.model;

import java.util.Date;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;

import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

import org.springframework.web.multipart.MultipartFile;

@Entity

public class Booking {

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long id;

	private String name;

	private int age;

	private Long mobileNumber;

	private String email;

	private String address;

	private int numberOfAdults;

	private int numberOfChildren;

	@DateTimeFormat(pattern = "yyyy-MM-dd")

	private Date travelDate;

	private double totalPrice;

	@ManyToOne

	@JoinColumn(name = "package_id", nullable = false)

	private Package travelPackage;

	@ManyToOne

	@JoinColumn(name = "user_id", nullable = false)

	private User user;

	@Transient

	private MultipartFile idProof;

	private String idProofPath;

	public Booking() {

		super();

	}

	public Booking(Long id, String name, int age, Long mobileNumber, String email, String address, int numberOfAdults,

			int numberOfChildren, Date travelDate, double totalPrice, Package travelPackage, User user,

			MultipartFile idProof, String idProofPath) {

		super();

		this.id = id;

		this.name = name;

		this.age = age;

		this.mobileNumber = mobileNumber;

		this.email = email;

		this.address = address;

		this.numberOfAdults = numberOfAdults;

		this.numberOfChildren = numberOfChildren;

		this.travelDate = travelDate;

		this.totalPrice = totalPrice;

		this.travelPackage = travelPackage;

		this.user = user;

		this.idProof = idProof;

		this.idProofPath = idProofPath;

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

	public int getAge() {

		return age;

	}

	public void setAge(int age) {

		this.age = age;

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

	public String getAddress() {

		return address;

	}

	public void setAddress(String address) {

		this.address = address;

	}

	public int getNumberOfAdults() {

		return numberOfAdults;

	}

	public void setNumberOfAdults(int numberOfAdults) {

		this.numberOfAdults = numberOfAdults;

	}

	public int getNumberOfChildren() {

		return numberOfChildren;

	}

	public void setNumberOfChildren(int numberOfChildren) {

		this.numberOfChildren = numberOfChildren;

	}

	public Date getTravelDate() {

		return travelDate;

	}

	public void setTravelDate(Date travelDate) {

		this.travelDate = travelDate;

	}

	public double getTotalPrice() {

		return totalPrice;

	}

	public void setTotalPrice(double totalPrice) {

		this.totalPrice = totalPrice;

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

	public MultipartFile getIdProof() {

		return idProof;

	}

	public void setIdProof(MultipartFile idProof) {

		this.idProof = idProof;

	}

	public String getIdProofPath() {

		return idProofPath;

	}

	public void setIdProofPath(String idProofPath) {

		this.idProofPath = idProofPath;

	}

}
