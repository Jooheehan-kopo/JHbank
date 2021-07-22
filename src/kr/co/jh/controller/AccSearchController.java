package kr.co.jh.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jh.dao.BankDAO;
import kr.co.jh.vo.BankVO;

public class AccSearchController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		List<BankVO> list = new ArrayList<BankVO>();
		String user_id = request.getParameter("user_id");
		
		if (user_id.equals(request.getSession().getAttribute(user_id)) ) {
			
			BankDAO dao = new BankDAO();
			list = dao.searchAll(user_id);
		} else {
			System.out.println("주민번호가 틀렸습니다. 다시 입력하세요.");
		}
		
		request.setAttribute("list", list);
		
		return "/account/AccSearch.jsp";
	}

}
