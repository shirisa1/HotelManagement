package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.LoginBean;
import com.model.ReservationBean;

//@WebServlet("/schedule")
public class ReservationServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String busprice=req.getParameter("busprice");
		 String cityfrom=req.getParameter("cityfrom");
		 String cityto=req.getParameter("cityto");
		 String start_at=req.getParameter("start_at");
		 String end_at=req.getParameter("end_at");
		 
		 ReservationBean reservation=new ReservationBean();// call to model layer
		 
		 reservation.setBusprice(busprice);
		 reservation.setCityfrom(cityfrom);
		 reservation.setCityto(cityto);
		 reservation.setStart_at(start_at);
		 reservation.setEnd_at(end_at);
		 
		 HashMap<String, String> userDetails = new HashMap<String, String>();
		 userDetails.put("busprice", busprice);
		 userDetails.put("cityfrom", cityfrom);
		 userDetails.put("cityto", cityto);
		 userDetails.put("start_at", start_at);
		 userDetails.put("end_at", end_at);
		 
		 HttpSession session = req.getSession();
		 session.setAttribute("user", userDetails);
		 
		 String query="select * from busschedule where busprice='"+busprice+"' and cityfrom='"+cityfrom+"' and cityto='"+cityto+"'";
		 Connection con=ConnectionClass.getConnection();
		 System.out.println("Connected");
		 try {
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			System.out.println(query);
			if (rs.next()) {
				RequestDispatcher dispatcher = req.getRequestDispatcher("Schedule.jsp");
				 dispatcher.forward(req, resp);
			}
			
		 } catch (Exception e) {
			 
		 }
		 
	}
}
