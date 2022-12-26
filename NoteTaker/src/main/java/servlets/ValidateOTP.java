package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateOTP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ValidateOTP() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int value = Integer.parseInt(request.getParameter("otp"));
		HttpSession sess = request.getSession();
		int otp = (int) sess.getAttribute("otp");
		RequestDispatcher rd = null;
		if (value == otp) {
			request.setAttribute("email", sess.getAttribute("email"));
			rd = request.getRequestDispatcher("newpassword.jsp");
			rd.forward(request, response);

		} else {
			request.setAttribute("message", "Wrong OTP");
			rd = request.getRequestDispatcher("enterotp.jsp");
			rd.forward(request, response);
		}

	}

}
