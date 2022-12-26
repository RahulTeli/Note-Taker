package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logoutcontrolservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}


	public Logoutcontrolservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

}
