package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.JoinService;
import vo.JoinVO;

@WebServlet("/join")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	JoinVO vo;
	JoinService js;
    public JoinController() {
    	js = new JoinService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String choice = request.getParameter("choice");
		
		if (choice.equals("actionDo")) {
			actionDo(request, response);
		} else if (choice.equals("delete")) {
			delete(request, response);
		} else if (choice.equals("login")) {
			login(request, response);
		}
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone");
		
		try {
			vo = new JoinVO(name, id, pw, sex, age, phone);
			js.actionDo(vo);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		RequestDispatcher view = request.getRequestDispatcher("join/joinResult.jsp");
		request.setAttribute("vo", vo);
		view.forward(request, response);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pw = request.getParameter("pw");
		
		try {
			js.delete(pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher view = request.getRequestDispatcher("join/delete.jsp");
		request.setAttribute("pw", pw);
		view.forward(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		try {
			JoinVO vo = js.login(id, pw);
			if (vo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("vo", vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher view = request.getRequestDispatcher("join/indexResult.jsp");
		request.setAttribute("vo", vo);
		view.forward(request, response);
	} 
	
}
