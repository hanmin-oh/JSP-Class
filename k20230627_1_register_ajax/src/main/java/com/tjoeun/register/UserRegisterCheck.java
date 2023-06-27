package com.tjoeun.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserRegisterCheck")
public class UserRegisterCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserRegisterCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//넘어온 데이터가 정상이므로 RegisterVO 클래스 객체를 만들어 저장한다.
		request.setCharacterEncoding("UTF-8");	
		response.setContentType("text/html; charset=UTF-8");
		String userID = request.getParameter("userID").trim(); 
		int result = new RegisterDAO().registerCheck(userID);
		System.out.println(result);
		response.getWriter().write(result + "");
	}

}
