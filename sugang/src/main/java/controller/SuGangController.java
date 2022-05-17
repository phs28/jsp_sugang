package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.SuGangService;
import vo.SuGangVO;


@WebServlet("/SuGang")
public class SuGangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	SuGangVO vo;
	SuGangService ss;
    public SuGangController() {
    	ss = new SuGangService();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String choice = request.getParameter("choice");
		
		if (choice.equals("insert")) {
			insert(request, response);
		} else if (choice.equals("select")) {
			select(request, response);
		} else if (choice.equals("update")) {
			update(request, response);
		} else if (choice.equals("delete")) {
			delete(request, response);
		}
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stnum = request.getParameter("stnum");
		String grade = request.getParameter("grade");
		String subject1 = request.getParameter("subject1");
		String subject2 = request.getParameter("subject2");
		String subject3 = request.getParameter("subject3");
		String subject4 = request.getParameter("subject4");
		String subject5 = request.getParameter("subject5");
		
		try {
			vo = new SuGangVO(stnum, grade, subject1, subject2, subject3, subject4, subject5);
			ss.insert(vo);
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		RequestDispatcher view = request.getRequestDispatcher("sugang/suGangInsert.jsp");
		request.setAttribute("vo", vo);
		view.forward(request, response);
	}
	
	protected void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stnum = request.getParameter("stnum");
		SuGangVO vo = null;
		
		try {
			vo = ss.select(stnum);
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		RequestDispatcher view = request.getRequestDispatcher("sugang/suGangSelect.jsp");
		request.setAttribute("vo", vo);
		view.forward(request, response);
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stnum = request.getParameter("stnum");
		String grade = request.getParameter("grade");
		String subject1 = request.getParameter("subject1");
		String subject2 = request.getParameter("subject2");
		String subject3 = request.getParameter("subject3");
		String subject4 = request.getParameter("subject4");
		String subject5 = request.getParameter("subject5");
		
		try {
			vo = new SuGangVO(stnum, grade, subject1, subject2, subject3, subject4, subject5);
			ss.update(vo);
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		RequestDispatcher view = request.getRequestDispatcher("sugang/suGangUpdate.jsp");
		request.setAttribute("vo", vo);
		view.forward(request, response);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stnum = request.getParameter("stnum");
		
		try {
			ss.delete(stnum);
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		RequestDispatcher view = request.getRequestDispatcher("sugang/suGangDelete.jsp");
		request.setAttribute("stnum", stnum);
		view.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
