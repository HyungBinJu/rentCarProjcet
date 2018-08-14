package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ReservationDTO;

/**
 * Servlet implementation class AgreementServlet
 */
@WebServlet("/AgreementServlet")
public class AgreementServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*		
	      <input type="hidden" name="rentdate" value="${rentdate}">
		  <input type="hidden" name="returndate" value="${returndate}">
		  <input type="hidden" name="shop" value="${shopid}">
		  <input type="hidden" name="shopname" value="${shopname}">
		  <input type="hidden" name="carid" value="${carDTO.carId}"> 
        <input type="hidden" name="carname" value="${carDTO.carName}">  
   	  */
	
        String carId = request.getParameter("carid");
	      String shopId = request.getParameter("shop");
	      String rentDate = request.getParameter("rentdate");
	      String returnDate = request.getParameter("returndate");   
	      String babySeat = request.getParameter("baby_seat");
	      String babyCarrige = request.getParameter("baby_carrige");
	      String navi = request.getParameter("navi");
	      
	      System.out.println(babySeat);
	      System.out.println(babyCarrige);
	      System.out.println(navi);
	      
	      String carName = request.getParameter("carname");
	      String shopName = request.getParameter("shopname");
	      String cupon = request.getParameter("cupon_select");
	      String insurance = request.getParameter("insurance_select");
	      
	      ReservationDTO reservDTO = new ReservationDTO();
	      reservDTO.setCarId(carId);
	      reservDTO.setShopId(shopId);
	      reservDTO.setRentDate(rentDate);
	      reservDTO.setReturnDate(returnDate);
	      reservDTO.setBabyseat(babySeat);
	      reservDTO.setBabyCarriage(babyCarrige);
	      reservDTO.setNavigation(navi);
		      
		  request.setAttribute("reservDTO", reservDTO);    
		  
		  request.setAttribute("carName", carName);
		  request.setAttribute("shopName", shopName);
		  request.setAttribute("cupon", cupon);
		  request.setAttribute("insurance", insurance);
		  
		  RequestDispatcher dis = request.getRequestDispatcher("agreement.jsp");
	      dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
