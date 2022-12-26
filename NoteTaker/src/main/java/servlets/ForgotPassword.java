package servlets;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import helper.User_Authe;


public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String Email = request.getParameter("Email");
			boolean user = User_Authe.authen(Email);
			
			if(user) {
				
				String To = Email;
				String From = "softtech276@gmail.com";
				Random rand = new Random();
				int otpvalue =  rand.nextInt(1255650);
				
				String host = "smtp.gmail.com";
				
				//get the system properties
				Properties properties = System.getProperties();
				
				// setting host
				properties.put("mail.smtp.host",host);
				properties.put("mail.smtp.port", "465");
				properties.put("mail.smtp.ssl.enable", "true");
				properties.put("mail.smtp.auth", "true");	
				
				// Step 1 : to get the Session object
				
				
				Session session = Session.getInstance(properties,new Authenticator() {

					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
					
						return new PasswordAuthentication("softtech276@gmail.com","fljrxhtnfadtlkkk");
								
					}
					
					
				});
				
				session.setDebug(true);
				
				// Step 2: compose the message
				
				MimeMessage mm = new MimeMessage(session);
				try {
					
					// from email
					mm.setFrom(From);
					
					//adding recipient 
					mm.addRecipient(Message.RecipientType.TO, new InternetAddress(To));
					
					//adding subject  to message
					mm.setSubject("OTP");
					
					//adding text to message
					mm.setText("your OTP is: " + otpvalue);
					
					//send
					
					//Step 3: send the message using Transport class
					
					Transport.send(mm);
					
					
					HttpSession mysess = request.getSession();
					
					RequestDispatcher rd = request.getRequestDispatcher("enterotp.jsp");
					request.setAttribute("message","OTP is sent to your email id");
					mysess.setAttribute("otp", otpvalue);
					mysess.setAttribute("email", Email);
					rd.forward(request, response);
					
					
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				
				
				
			}
			else {
				
				ServletContext context=getServletContext(); 
				context.setAttribute("mess","Email not exists !");
				response.sendRedirect("forgotpassword.jsp");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
