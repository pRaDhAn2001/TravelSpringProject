package com.capstone.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;

import org.springframework.context.annotation.Bean;

import org.springframework.context.annotation.Configuration;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration

public class AppConfig implements WebMvcConfigurer {

	@Override

	public void addResourceHandlers(ResourceHandlerRegistry registry) {

		registry.addResourceHandler("/uploads/**")

				.addResourceLocations("file:///C:\\Users\\Sarbasish\\Documents\\Uploads/")

				.setCachePeriod(0); // Disable caching for development, adjust as needed

	}

	@Bean

	public FilterRegistrationBean<SessionFilter> loggingFilter() {

		FilterRegistrationBean<SessionFilter> registrationBean = new FilterRegistrationBean<>();

		registrationBean.setFilter(new SessionFilter());

		registrationBean.addUrlPatterns("/user/*", "/viewDetails", "/updateDetails", "/updateDetailsForm",

				"/viewBookings", "/addBooking", "/bookingsuccess", "/submit_enquiry",

				"/packages", "/enquiry", "/user_dashboard", "/admin_dashboard",

				"/viewAllBookings", "/updateBooking/*", "/deleteBooking/*",

				"/updatePackage/*", "/deletePackage/*", "/viewAllUsers", "/addNewUser", "/updateUser",

				"/deleteUser", "/addNewUser", "/viewEnquiries", "/addPackage",

				"/addBookingAdmin", "/login", "/logout");

		return registrationBean;

	}

}
