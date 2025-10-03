package com.example.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.example.model.User;

@SuppressWarnings("serial")
@WebServlet("/user")

public class UserController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		// Simulasi mendapatkan data pengguna
		User user = new User("John Doe","john.doe@example.com");
		
		// Menyimpan objek user ke request scope
		request.setAttribute("user", user);
		
		// Meneruskan ke halaman JSP
		request.getRequestDispatcher("/user.jsp").forward(request, response);
	}
}