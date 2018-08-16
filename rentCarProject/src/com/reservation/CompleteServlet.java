package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.ReservationDTO;
import com.service.ReservationService;


@WebServlet("/Complete")
public class CompleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		<input type="hidden" name="carid" value="${reservDTO.carId}">
		<input type="hidden" name="shopid" value="${reservDTO.shopId}">
		<input type="hidden" name="rentdate" value="${reservDTO.rentDate}">
		<input type="hidden" name="returnDate" value="${reservDTO.returnDate}">
		<input type="hidden" name="insurance" value="${reservDTO.insurance}">
		<input type="hidden" name="discountPrice" value="${reservDTO.price}">
		<input type="hidden" name="navigation" value="${reservDTO.navigation}">
		<input type="hidden" name="babyseat" value="${reservDTO.babySeat}">
		<input type="hidden" name="babycarriage" value="${reservDTO.babyCarriage}">
		<input type="hidden" name="userid" value="${reservDTO.userId}">
		*/
		
		HttpSession session = request.getSession();
		
		session.setAttribute("userid", "brown");
		String userId = (String)session.getAttribute("userid");
		
		String carid = request.getParameter("carid");
		String shopid = request.getParameter("shopid");
		String rentdate = request.getParameter("rentdate");
		String returnDate = request.getParameter("returnDate");
		String insurance = request.getParameter("insurance");
		String discountPrice = request.getParameter("discountPrice");
		String navigation = request.getParameter("navigation");
		String babyseat = request.getParameter("babyseat");
		String babycarriage = request.getParameter("babycarriage");
		
		
		
		/*
		ReservationDTO(String rentId, String rentDate, String returnDate, String realReturnDate, String insurance,
				String carId, String shopId, String userId, String navigation, String babySeat, String babyCarriage,
				int price)
		*/
		ReservationDTO reservDTO = new ReservationDTO(null,rentdate,returnDate,null,insurance,carid,shopid,userId,navigation,babyseat,babycarriage,Integer.parseInt(discountPrice));
		
		ReservationService reservService = new ReservationService();
		int result = reservService.insertOrder(reservDTO,carid);
	
		
		RequestDispatcher dis = request.getRequestDispatcher("complete.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
