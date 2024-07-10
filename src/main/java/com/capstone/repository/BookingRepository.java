package com.capstone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capstone.model.Booking;

import com.capstone.model.User;

public interface BookingRepository extends JpaRepository<Booking, Long> {

	List<Booking> findByUserId(Long userId);

	List<Booking> findByUser(User user);

}
