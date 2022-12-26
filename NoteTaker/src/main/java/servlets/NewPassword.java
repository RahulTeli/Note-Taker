package servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;


import helper.FactoryProvider;


public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public NewPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		String pass = request.getParameter("ConfNewPassUser");
		
		try {
			
			Session sess = FactoryProvider.getFactory().openSession();
			Transaction tx = sess.beginTransaction();
			
			String query = "update Register set Password =:p where Email =:e";
			@SuppressWarnings("rawtypes")
			NativeQuery nq = sess.createSQLQuery(query);
			nq.setParameter("p", pass);
			nq.setParameter("e", email);
			nq.executeUpdate();
			tx.commit();
			
			ServletContext serv = request.getServletContext();
			serv.setAttribute("succ", "Password Set");
			response.sendRedirect("index.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
