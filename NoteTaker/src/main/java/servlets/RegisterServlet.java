
package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;

import doit.Register;
import helper.FactoryProvider;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			
			response.setContentType("text/html");

			String Username = request.getParameter("username");
			String Email = request.getParameter("eemail");
			String Password = request.getParameter("pass");
			String ConfPassword = request.getParameter("confpass");

			if (Password.equals(ConfPassword)) {
				Register reg = new Register(Username, Email, Password);

				Session sess = FactoryProvider.getFactory().openSession();

				Transaction tx = sess.beginTransaction();

				String query = "select * from Register where Email =:e";
				@SuppressWarnings("unchecked")
				NativeQuery <Register> nq = sess.createSQLQuery(query);
				nq.setParameter("e", Email);
				
				if (nq.list().isEmpty()) {
					sess.save(reg);

					tx.commit();
			
					HttpSession httpsession = request.getSession();
					httpsession.setAttribute("messege", "Welcome " + Username);
					response.sendRedirect("registersuccess.jsp");
					return;
				}
				else {
					
					response.sendRedirect("registration.jsp?info=Email is already exists");
				}
			} else {
				
				response.sendRedirect("registration.jsp");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

}
