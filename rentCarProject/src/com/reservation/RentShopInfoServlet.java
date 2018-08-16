package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ShopDTO;
import com.service.ShopService;

@WebServlet("/RentShopInfo")
public class RentShopInfoServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String shopId = request.getParameter("shop");
		
		ShopDTO shopDTO = new ShopDTO();
		shopDTO.setShopId(shopId);
		
		ShopService shopService = new ShopService();
		
		List<ShopDTO> shopList = shopService.getShopList(shopDTO);
		
		request.setAttribute("shopList", shopList);
		
		RequestDispatcher dis = request.getRequestDispatcher("rent_shopinfo.jsp");
		dis.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
