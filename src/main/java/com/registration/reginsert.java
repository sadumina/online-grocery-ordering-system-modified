package com.registration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/reginsert")
public class reginsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String email= request.getParameter("email");
		String phone= request.getParameter("pnum");
		String password= request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue=registrationDBUtil.insertregdetails(fname, lname, email, phone, password);
		
		if(isTrue== true) {
			
			RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
