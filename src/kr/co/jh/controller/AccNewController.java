package kr.co.jh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AccNewController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String bank_name = request.getParameter("bank_name");
		String acc_pw = request.getParameter("acc_pw");
		String acc_name = request.getParameter("acc_name");
		
		
		
		
		return null;
	}

}
