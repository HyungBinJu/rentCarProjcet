package com.reservation;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * <input type="hidden" name="rentdate" value="${rentdate}"> <input
		 * type="hidden" name="returndate" value="${returndate}"> <input type="hidden"
		 * name="shop" value="${shopid}"> <input type="hidden" name="shopname"
		 * value="${shopname}"> <input type="hidden" name="carid"
		 * value="${carDTO.carId}"> <input type="hidden" name="carname"
		 * value="${carDTO.carName}">
		 */
		ReservationDTO reservDTO = new ReservationDTO();
		
		String carId = request.getParameter("carid");
		String shopId = request.getParameter("shop");
		String rentDate = request.getParameter("rentdate");
		String returnDate = request.getParameter("returndate");
		String [] caroption = request.getParameterValues("option_checkbox");
		
		for(int i=0; caroption.length>i; i++) {
			if(caroption[i].equals("네비게이션")) {
				reservDTO.setNavigation("Y");
			}else if(caroption[i].equals("베이비카시트")) {
				reservDTO.setBabyseat("Y");
			}else if(caroption[i].equals("유모차")) {
				reservDTO.setBabyCarriage("Y");
			}
		}
		
		String navi = reservDTO.getNavigation();
		System.out.println("navi "+navi);
		String seat = reservDTO.getBabyseat();
		System.out.println("seat "+seat);
		String carry = reservDTO.getBabyCarriage();
		System.out.println("carry "+carry);
		
		String carName = request.getParameter("carname");
		String shopName = request.getParameter("shopname");

		System.out.println("car id: " + carId);
		System.out.println("shop id: " + shopId);
		System.out.println("rentDate: " + rentDate);
		System.out.println("returnDate: " + returnDate);
		System.out.println("carName: " + carName);
		System.out.println("shopName: " + shopName);

		
		reservDTO.setCarId(carId);
		reservDTO.setShopId(shopId);
		reservDTO.setRentDate(rentDate);
		reservDTO.setReturnDate(returnDate);
		
		request.setAttribute("reservDTO", reservDTO);

		request.setAttribute("carName", carName);
		request.setAttribute("shopName", shopName);

		RequestDispatcher dis = request.getRequestDispatcher("agreement.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
