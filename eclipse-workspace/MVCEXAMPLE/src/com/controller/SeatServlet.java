package com.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SeatServlet extends HttpServlet {
		
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		doPost(req, resp);
		}
		
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String busprice=req.getParameter("busprice");
		 String cityfrom=req.getParameter("cityfrom");
		 String cityto=req.getParameter("cityto");
		 String start_at=req.getParameter("start_at");
		 String end_at=req.getParameter("end_at");
		 
		 HashMap<String, String> userDetails = new HashMap<String, String>();
		 userDetails.put("busprice", busprice);
		 userDetails.put("cityfrom", cityfrom);
		 userDetails.put("cityto", cityto);
		 userDetails.put("start_at", start_at);
		 userDetails.put("end_at", end_at);
		 
		 HttpSession session = req.getSession();
		 session.setAttribute("user", userDetails);
		 
		 RequestDispatcher dispatcher = req.getRequestDispatcher("Schedule.jsp");
		 dispatcher.forward(req, resp);
	}
}
