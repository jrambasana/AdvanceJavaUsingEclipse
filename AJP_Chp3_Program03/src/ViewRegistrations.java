

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/viewregs")
public class ViewRegistrations extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		Statement st = null;
		
		try
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
		 st = con.createStatement();
		 		 
		 ResultSet rs = st.executeQuery("Select * from registrations");

		 if (rs != null)
		 {
			 out.println("<table border='1'>");
			 
			 out.println("<tr>");
				 out.println("<th>ID</th>");			
				 out.println("<th>Enrollment no</th>");			
				 out.println("<th>First Name</th>");			
				 out.println("<th>Last Name</th>");			
				 out.println("<th>Semester</th>");			
				 out.println("<th>Phone</th>");			
				 out.println("<th>Edit</th>");			
				 out.println("<th>Delete</th>");			
			 out.println("</tr>");
			 while(rs.next())
			 {
				 out.println("<tr>");
					 out.println("<td>" + rs.getInt(1) + "</td>");
					 out.println("<td>" + rs.getString(2) + "</td>");
					 out.println("<td>" + rs.getString(3) + "</td>");
					 out.println("<td>" + rs.getString(4) + "</td>");
					 out.println("<td>" + rs.getInt(5) + "</td>");
					 out.println("<td>" + rs.getString(6) + "</td>");
					 out.println("<td> <a href='edit?id=" + rs.getInt(1) +"'>Edit</a> </td>");
					 out.println("<td> <a href='delete?id=" + rs.getInt(1) +"'>Delete</a> </td>");
				 out.println("</tr>");			 
			 }
			 out.println("</table>");
		 }
		 else
		 {
			 out.println("No users found!!");
		 }

		}
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("<a href='register.html'>Sign Up</a>");		
	}

}
