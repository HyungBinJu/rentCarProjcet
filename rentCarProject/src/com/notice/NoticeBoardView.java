package com.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.BoardDTO;
import com.service.BoardService;

/**
 * Servlet implementation class NoticeBoardView
 */
@WebServlet("/NoticeBoardView")
public class NoticeBoardView extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String num = request.getParameter("num");
		
		BoardService service = new BoardService();
		BoardDTO dto = service.viewBoard(num);
		
		
		
		String nextPage = "";
		if(dto!=null) {
			nextPage="board_view.jsp";
			System.out.println("리스트들옴");
		}else {
			nextPage="board_list.jsp";
		}
		
		/*RequestDispatcher dis = request.getRequestDispatcher(nextPage);
		dis.forward(request, response);*/
		
		request.setAttribute("boardList", dto);
		RequestDispatcher dis = request.getRequestDispatcher(nextPage);
		dis.forward(request, response);
		
		

		//response.sendRedirect(nextPage);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
