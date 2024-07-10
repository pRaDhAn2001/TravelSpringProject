package com.capstone.config;

import java.io.IOException;

import javax.servlet.Filter;

import javax.servlet.FilterChain;

import javax.servlet.ServletException;

import javax.servlet.ServletRequest;

import javax.servlet.ServletResponse;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class SessionFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        String loginURI = httpRequest.getContextPath() + "/login";
        String homeURI = httpRequest.getContextPath() + "/";
        String logoutURI = httpRequest.getContextPath() + "/logout";
        String adminDashboardURI = httpRequest.getContextPath() + "/admin_dashboard";

        boolean loggedIn = (session != null && session.getAttribute("userId") != null);
        boolean isAdmin = (session != null && "admin".equals(session.getAttribute("username")));
        boolean loginRequest = httpRequest.getRequestURI().equals(loginURI);
        boolean homeRequest = httpRequest.getRequestURI().equals(homeURI);
        boolean logoutRequest = httpRequest.getRequestURI().equals(logoutURI);
        boolean adminRequest = httpRequest.getRequestURI().equals(adminDashboardURI);

        if (loggedIn || loginRequest || homeRequest || logoutRequest) {
            if (adminRequest && !isAdmin) {
                httpResponse.sendRedirect(homeURI);
            } else {
                chain.doFilter(request, response);
            }
        } else {
            httpResponse.sendRedirect(homeURI);
        }
    }
}

