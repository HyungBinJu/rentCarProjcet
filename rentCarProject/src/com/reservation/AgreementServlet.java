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
import javax.servlet.http.HttpSession;

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
		HttpSession session = request.getSession();
		
		session.setAttribute("userid", "brown");
		String userId = (String)session.getAttribute("userid");
		
		ReservationDTO reservDTO = new ReservationDTO();
 
		String promotion = request.getParameter("promotion");
		String carOption = request.getParameter("car_option");
		String carPrice = request.getParameter("carprice");
		String price = request.getParameter("price");
		
		String insurance = request.getParameter("insurance");	
		String rentDate = request.getParameter("rentdate");
		String returnDate = request.getParameter("returndate");
		String discountPrice = request.getParameter("discount_price");
		String [] caroption = request.getParameterValues("option_checkbox");
		String carId = request.getParameter("carid");
		String shopId = request.getParameter("shop");
		
		System.out.println("p"+promotion);
		System.out.println("c"+carOption);
		System.out.println("i"+insurance);
		System.out.println("d"+discountPrice);

		
		for(int i=0; caroption.length>i; i++) {
			if(caroption[i].equals("네비게이션")) {
				reservDTO.setNavigation("Y");
			}else if(caroption[i].equals("베이비카시트")) {
				reservDTO.setBabySeat("Y");
			}else if(caroption[i].equals("유모차")) {
				reservDTO.setBabyCarriage("Y");
			}
		}
				
		String carName = request.getParameter("carname");
		String shopName = request.getParameter("shopname");

		reservDTO.setCarId(carId);
		reservDTO.setShopId(shopId);
		reservDTO.setRentDate(rentDate);
		reservDTO.setReturnDate(returnDate);
		reservDTO.setPrice(Integer.parseInt(discountPrice));
		reservDTO.setInsurance(insurance);
		reservDTO.setUserId(userId);
		
		request.setAttribute("reservDTO", reservDTO);

		request.setAttribute("carname", carName);
		request.setAttribute("shopname", shopName);
		request.setAttribute("promotion", promotion);
		request.setAttribute("insurance", insurance);
		request.setAttribute("carOption", carOption);
		request.setAttribute("price", price);
		request.setAttribute("discountPrice", discountPrice);
		
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
