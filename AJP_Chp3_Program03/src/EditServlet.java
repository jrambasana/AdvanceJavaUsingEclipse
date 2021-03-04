

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

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/edit")
public class EditServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		Connection con = null;
		Statement st = null;
		
		try
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
		 st = con.createStatement();
		 		 
		 ResultSet rs = st.executeQuery("Select * from registrations where id = " + id);

		 if ( rs != null && rs.next() )
		 {
			 out.println("<form action='updateRecord' method='post'>");
			 out.println("<input type='hidden' name='id' value='" + rs.getInt("id")	+ "' />");
			 out.println("<table>");
			 out.println("<tr>");
			 out.println("<td>Enrollment No: </td> "
			 		+ "<td> <input type='text' name='enrollment' value='" + rs.getString("enrollment")
			 		+ "'/> </td>");
			 out.println("</tr>");
			 out.println("<tr>");
			 out.println("<td>First Name: </td> <td> <input type='text' name='fname' value='" + rs.getString("fname")
			 		+ "'/> </td>");
			 out.println("</tr>");
			 out.println("<tr>");
			 out.println("<td>Last Name: </td> <td> <input type='text' name='lname' value='" + rs.getString("lname")
			 		+ "'/> </td>");
			 out.println("</tr>");
			 out.println("<tr>");
			 out.println("<td>Semester: </td> ");
			 out.println("<td> ");
			 out.println("<select name='semester' id='semester'>");
			 out.println("<option value='1'>Semester 1</option>");
			 out.println("<option value='2'>Semester 2</option>");		
			 out.println("<option value='3'>Semester 3</option>");		
			 out.println("<option value='4'>Semester 4</option>");		
			 out.println("<option value='5'>Semester 5</option>");		
			 out.println("<option value='6'>Semester 6</option>");	
			 out.println("<option value='7'>Semester 7</option>");			
			 out.println("<option value='8'>Semester 8</option>");			
			 out.println("</select>");
			 out.println("</td>");
		 	out.println("</tr>");
			 out.println("<tr>");
			 out.println("<td>Contact Number: </td> <td> <input type='text' name='phone' value='" + rs.getString("phone")
			 		+ "'/> </td>");
			 out.println("</tr>");
			 out.println("<tr>");
			 out.println("<td></td> <td> <input type='submit' value='Update'/> </td>");
			 out.println("</tr>");
			 out.println("</table>");
			 out.println("</form>");
		 }
		}
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("<a href='veiwregs'>View Registrations</a>");		
	}

}
