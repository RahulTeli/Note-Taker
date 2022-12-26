package servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import doit.Note;
import helper.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int note_id = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note = (Note) s.get(Note.class, note_id);
			s.delete(note);
			tx.commit();
			s.close();
			response.sendRedirect("home.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
