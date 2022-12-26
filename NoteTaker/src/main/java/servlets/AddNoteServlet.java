
package servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import doit.Note;
import helper.FactoryProvider;


public class AddNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
	
			response.setContentType("text/html");
			
			String Title = request.getParameter("title");
			String Content = request.getParameter("content");
			String Email = request.getParameter("email");
			
			Note note = new Note(Title,Content,new Date(),Email);
			
			Session sess = FactoryProvider.getFactory().openSession();
			
			Transaction tx = sess.beginTransaction();
			
			sess.save(note);
			
			tx.commit();
			
			sess.close();
			
			response.sendRedirect("home.jsp");
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}

	public AddNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
