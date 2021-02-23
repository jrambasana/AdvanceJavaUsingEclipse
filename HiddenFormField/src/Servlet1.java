

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/s1")
public class Servlet1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String user = request.getParameter("user");
		out.println("Welcome " + user);
		
		out.println("<form action='s2' method='get'>");
		out.println("<input type='hidden' name='user2' value='" + user + "'/>");
		out.println("<input type='submit' value='Page 2'/>");
		out.println("</form>");
		
				
	}

}
