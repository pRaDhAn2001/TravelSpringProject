package com.capstone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.capstone.model.Booking;

import com.capstone.model.User;

import com.capstone.repository.BookingRepository;

@Service

public class BookingService {

	@Autowired

	private BookingRepository bookingRepository;

	public Booking saveBooking(Booking booking) {

		return bookingRepository.save(booking);

	}

	public void saveBookingByAdmin(Booking booking) {

		bookingRepository.save(booking);

	}

	public List<Booking> getBookingsByUserId(Long userId) {

		return bookingRepository.findByUserId(userId);

	}

	public Booking getBookingById(Long id) {

		return bookingRepository.findById(id).orElse(null);

	}

	public void updateBooking(Booking booking) {

		bookingRepository.save(booking);

	}

	public void deleteBooking(Long id) {

		bookingRepository.deleteById(id);

	}

	public List<Booking> findBookingsByUser(User user) {

		return bookingRepository.findByUser(user);

	}

	public List<Booking> getAllBookings() {

		return bookingRepository.findAll();

	}

}
