

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		PreparedStatement pst = null;
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = null;
		
		if(username != null && password != null)
		{
			try
			{
			 Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
			 pst = con.prepareStatement("Select * from users where username=? and password=? ");
			 pst.setString(1, username);
			 pst.setString(2, password);
			 
			 ResultSet rs = pst.executeQuery();
			 RequestDispatcher rd = null;
			 
			 if (  ( rs != null ) && ( rs.next( ) ) )
			 {
				 session = request.getSession(true);
				 User u1 = new User();
				 u1.setId(rs.getInt("id"));
				 u1.setUsername(rs.getString("username"));
				 u1.setPassword(rs.getString("password"));
				 u1.setCity(rs.getString("city"));
				 u1.setPhone(rs.getString("phone"));		 
				 session.setAttribute("user1", u1);
				 rd = request.getRequestDispatcher("welcome");
				 rd.forward(request, response);
			 }
			 else
			 {
				rd = request.getRequestDispatcher("error.html");
				rd.include(request, response);
				rd = request.getRequestDispatcher("login.html");
				rd.include(request, response);
			 }
			}
			catch(Exception e)
			{
				out.println(e);
				e.printStackTrace();
			}
			
		}
		
	}

}
