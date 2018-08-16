package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ReservationDTO;

@WebServlet("/RentOption")
public class RentOptionServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			  /*		
		      <input type="hidden" name="rentdate" value="${rentdate}">
			  <input type="hidden" name="returndate" value="${returndate}">
			  <input type="hidden" name="shop" value="${shopid}">
			  <input type="hidden" name="shopname" value="${shopname}">
			  <input type="hidden" name="carid" value="${carDTO.carId}"> 
	          <input type="hidden" name="carname" value="${carDTO.carName}">  
	     	  */
		
			  //String price = request.getParameter("price");
	          String carId = request.getParameter("carSelect").split("/")[1];
	          String carPrice = request.getParameter("carSelect").split("/")[2];
		      String shopId = request.getParameter("shop");
		      String rentDate = request.getParameter("rentdate");
		      String returnDate = request.getParameter("returndate");   
		      String carName = request.getParameter("carSelect").split("/")[0];
		      String shopName = request.getParameter("shopname");
		      String price = request.getParameter("price_param");
		      String discountParam = request.getParameter("discount_param");
		      
		      System.out.println("option name = "+carName);	
		      System.out.println("carPrice = "+carPrice);	
		      System.out.println("price = "+price);
			  System.out.println("option id = "+carId);
		      
		      ReservationDTO reservDTO = new ReservationDTO();
		      reservDTO.setCarId(carId);
		      reservDTO.setShopId(shopId);
		      reservDTO.setRentDate(rentDate);
		      reservDTO.setReturnDate(returnDate);
			      
			  request.setAttribute("reservDTO", reservDTO);   
			  /*
			  request.setAttribute("carid", carId);
			  request.setAttribute("rentdate", rentDate);
			  request.setAttribute("returndate", returnDate);
			  request.setAttribute("shopid", shopId);
			  */
			  request.setAttribute("carname", carName);
			  request.setAttribute("shopname", shopName);
			  request.setAttribute("carprice", carPrice);
			  request.setAttribute("price", price);
			  request.setAttribute("discount_param", discountParam);
			  
			  
			  RequestDispatcher dis = request.getRequestDispatcher("rent_option.jsp");
		      dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
