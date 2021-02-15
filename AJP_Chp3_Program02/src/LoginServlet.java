

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name, pwd;
		name = request.getParameter("username");
		pwd  = request.getParameter("password");
		
		RequestDispatcher rd = null;
		
		if( name.equals("admin") && pwd.equals("admin") )
		{
			rd = request.getRequestDispatcher("/homepage");
			rd.forward(request, response);
		}
		else
		{
			rd = request.getRequestDispatcher("/login.html");
			out.println("<h1 style='color:red'>Login Error!!!</h1>");
			rd.include(request, response);
		}
		
	}

}
