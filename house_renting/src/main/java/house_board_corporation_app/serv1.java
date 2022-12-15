package house_board_corporation_app;


import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import house_board_corporation_app.client;
import house_board_corporation_app.clientwork;


import java.sql.*;

/**
 * Servlet implementation class serv1
 */
@WebServlet("/serv1")
public class serv1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serv1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String n=(String) request.getParameter("name");
	String n1=(String) request.getParameter("password");
	PrintWriter pc=response.getWriter();
	if(clientwork.validate(n,n1)) {
		HttpSession ss=request.getSession();
		ss.setAttribute("name", n);
		ss.setAttribute("password", n1);
		response.sendRedirect("home1.jsp");
	}
	else if(n.equalsIgnoreCase("admin") && n1.equalsIgnoreCase("admin")) {
		HttpSession ss=request.getSession();
		ss.setAttribute("name", n);
		ss.setAttribute("password", n1);
		response.sendRedirect("home1.jsp");
	}
	else if(n.equalsIgnoreCase("admin") && n1.equalsIgnoreCase("view")) {
		HttpSession ss=request.getSession();
		ss.setAttribute("name", n);
		ss.setAttribute("password", n1);
		response.sendRedirect("view.jsp");
	}
	
	
	else {
		HttpSession ss=request.getSession();

		response.sendRedirect("login.jsp");
	}
	}

}
