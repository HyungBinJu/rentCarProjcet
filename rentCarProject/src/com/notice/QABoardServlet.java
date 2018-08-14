package com.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.QABoardDTO;
import com.service.QABoardService;

@WebServlet("/QABoard")
public class QABoardServlet extends HttpServlet {
    public QABoardServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//QABoard List 출력 servlet
		QABoardService service = new QABoardService();
		List<QABoardDTO> list = null;
		list = service.getAllList();
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("qaboard_list.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
