package servlets;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String subject = request.getParameter("Subject");
		String message = request.getParameter("Message");
		
		String To = "rahulteli2005@gmail.com";
		String From = "softtech276@gmail.com";
		
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
			mm.setSubject(subject);
			
			//adding text to message
			mm.setText("Subject:" + subject +"\n"+ "From:" + email +"\n"+ "Name: " + name +"\n"+ "Message:" +  message);
			
			//send
			
			//Step 3: send the message using Transport class
			
			Transport.send(mm);
			
			
			response.sendRedirect("contact.jsp");
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
	}

}
