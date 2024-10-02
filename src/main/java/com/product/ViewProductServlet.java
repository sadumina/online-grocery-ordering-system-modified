package com.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewProductServlet")
public class ViewProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		
		List<Product> prodDetails;
		
		if(category == null || category.isEmpty()) {
			prodDetails = ProductDBUtil.getAllProduct();
		} else {
			prodDetails = ProductDBUtil.getProductsByCategory(category);
		}
		
		List<String> categoires = ProductDBUtil.getAllCatgeories();
		
		request.setAttribute("prodDetails", prodDetails);
		request.setAttribute("categories", categoires);
		
		RequestDispatcher dis = request.getRequestDispatcher("viewproducts.jsp");
		dis.forward(request, response);
	}	
} 
