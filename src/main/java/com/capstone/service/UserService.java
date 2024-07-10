package com.capstone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.capstone.model.User;

import com.capstone.repository.UserRepository;

@Service

public class UserService {

	@Autowired

	private UserRepository userRepository;

	public User saveUser(User user) {

		return userRepository.save(user);

	}

	public User findUserByUsername(String username) {

		return userRepository.findByUsername(username);

	}

	public User findUserById(Long id) {

		return userRepository.findById(id).orElse(null);

	}

	public User findByUsernameAndPassword(String username, String password) {

		return userRepository.findByUsernameAndPassword(username, password);

	}

	public List<User> findAllUsers() {

		return userRepository.findAll();

	}

	public void updateUser(User updatedUser) {

		userRepository.save(updatedUser);

	}

	public void deleteUser(Long userId) {

		userRepository.deleteById(userId);

	}

}
