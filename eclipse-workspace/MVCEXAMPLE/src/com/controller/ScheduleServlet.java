package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ConnectionClass;
import com.model.ScheduleBean;

public class ScheduleServlet extends HttpServlet {

//	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 resp.setContentType("text/html");
		 PrintWriter out= resp.getWriter();
		 
		 String price=req.getParameter("busprice");
		 String depcity=req.getParameter("cityfrom");
		 String arrcity=req.getParameter("cityto");
		 String deptime=req.getParameter("start_at");
		 String arrtime=req.getParameter("end_at");
		 
//		 Connection con=null;
		 
		 //set the values to the Model attributes
		 ScheduleBean schedule=new ScheduleBean();// call to model layer
		 
		 schedule.setPrice(price);
		 schedule.setDepcity(depcity);
		 schedule.setArrcity(arrcity);
		 schedule.setDeptime(deptime);
		 schedule.setArrtime(arrtime);
		 
		 //get the details from the Model Class
		 String p=schedule.getPrice();
		 String dc=schedule.getDepcity();
		 String ac=schedule.getArrcity();
		 String dt=schedule.getDeptime();
		 String at=schedule.getArrtime();
		 
		 //Add the details in the HashMap
		 HashMap map=new HashMap();
		 map.put("busprice", p);
		 map.put("cityfrom", dc);
		 map.put("cityto", ac);
		 map.put("deptime", dt);
		 map.put("arrtime", at);
		 
		 //create the session and add the attributes in session
		 HttpSession session=req.getSession();
		 session.setAttribute("details", map);
		 
		 req.setAttribute("scheduledetails", schedule);
		 
		 String query="select cityfrom,cityto from BusSchedule where cityfrom='"+depcity+"' and cityto='"+arrcity+"'";
		 Connection con=ConnectionClass.getConnection();
		 System.out.println("Connected");
		 
		 try {
//			String query="select * from '" + dc + "'='"+"?'" + " where '" + ac +"'='"+"?'";
			PreparedStatement ps=con.prepareStatement(query);
//			ps.setString(1, price);
//			ps.setString(2, depcity);
//			ps.setString(3, arrcity);
//			ps.setString(4, deptime);
//			ps.setString(5, arrtime);
			
			ResultSet rs=ps.executeQuery();
			System.out.println(query);
			// use the request dispatcher to dispatch the request
			 if(rs.next()) {		 
				 RequestDispatcher rd=req.getRequestDispatcher("Schedule.jsp");
				 rd.forward(req, resp);
				 System.out.println("Search Success.");
			 }
			 
			 else {
				 RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
				 rd.forward(req, resp);
				 System.out.println("Search Failed.");
			 }
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
	}
}
