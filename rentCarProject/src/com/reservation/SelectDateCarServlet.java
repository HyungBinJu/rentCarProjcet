package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.CarDTO;
import com.service.CarService;

@WebServlet("/SelectDateCar")
public class SelectDateCarServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session = request.getSession();
		
		session.setAttribute("userid", "brown");
		String userId = (String)session.getAttribute("userid");
		
		String shopId = request.getParameter("shop");
		System.out.println(shopId);
		String searchType = request.getParameter("searchType");

		CarDTO dto = new CarDTO();
		dto.setCarType(searchType);
		dto.setShopId(shopId);
		
		
		CarService service = new CarService();
		List<CarDTO> carList = null;
		
		carList = service.carAllList(dto);
		request.setAttribute("carList", carList);	
		
		RequestDispatcher dis = request.getRequestDispatcher("selectCar.jsp");
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
