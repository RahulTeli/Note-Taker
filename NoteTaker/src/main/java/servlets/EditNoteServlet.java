package servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import doit.Note;
import helper.FactoryProvider;


public class EditNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EditNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int id = Integer.parseInt(request.getParameter("id").trim());
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note = (Note)s.get(Note.class, id);
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			tx.commit();
			
			ServletContext context=getServletContext();   // application scope 
			context.setAttribute("NID", note.getID());
			response.sendRedirect("home.jsp");
			s.close();
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	
}
