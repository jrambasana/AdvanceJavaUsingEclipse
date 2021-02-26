

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession(false);
		User u1 = (User)session.getAttribute("user1");
		try
		{
		 
		 if ( u1 != null )
		 {
			 out.println("<h1>Welcome</h1>");
			 out.println("<h2> Username: "+ u1.getUsername() +"</h2>");
			 out.println("<h3> City: "+u1.getCity()+"</h3>");
			 out.println("<h4> Contact: "+ u1.getPhone()+"</h4>");
			 out.println("<a href='logout'>Logout</a>");
		 }
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
