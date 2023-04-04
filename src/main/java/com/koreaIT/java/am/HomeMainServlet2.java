package com.koreaIT.java.am;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home/printDan")
public class HomeMainServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		String inputDan = request.getParameter("dan");
		String inputLimit = request.getParameter("limit");
		String inputColor = request.getParameter("color");

		if (inputDan == null) {
			inputDan = "1";
		}
		if (inputLimit == null) {
			inputLimit = "1";
		}
		if (inputColor == null) {
			inputColor = "black";
		}
		
		int dan = Integer.parseInt(inputDan);
		int limit = Integer.parseInt(inputLimit);
		
		response.getWriter().append(String.format("<div style='color:%s;'>== %d단 ==</div>", inputColor, dan));

		for (int i = 1; i <= limit; i ++) {
			response.getWriter().append(String.format("<div style=\"color:%s;\">%d * %d = %d</div>", inputColor, dan, i, dan * i));
		}
		
	}
}