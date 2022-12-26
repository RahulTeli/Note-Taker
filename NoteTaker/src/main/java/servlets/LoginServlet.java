package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import helper.User_Authe;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			response.setContentType("text/html");
			String Name = request.getParameter("name");
			String Email = request.getParameter("email");
			String Password = request.getParameter("password");
			
			boolean user =  User_Authe.authen(Name, Email, Password);
			
			if(user == false) {
				request.setAttribute("error", "Username is not exists !");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return;
			}
			else {
				
				HttpSession sess = request.getSession();
				sess.setAttribute("eid",Email);
				response.sendRedirect("home.jsp");
				return;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}


	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

}
