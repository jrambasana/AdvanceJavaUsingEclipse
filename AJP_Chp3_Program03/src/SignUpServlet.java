

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String enrollment = request.getParameter("enrollment");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		int semester = Integer.parseInt(request.getParameter("semester"));
		String phone = request.getParameter("phone");
		
		out.println("<br>Enrollment no: " + enrollment);
		out.println("<br>First Name: " + fname);
		out.println("<br>Last Name: " + lname);
		out.println("<br>Semester: " + semester);
		out.println("<br>Contact number: " + phone);
		
		Connection con = null;
		PreparedStatement pst = null;
		
		try
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
		 pst = con.prepareStatement("insert into registrations (enrollment, fname, lname, semester, phone) values (?,?,?,?,?)");
		 pst.setString(1,enrollment);
		 pst.setString(2, fname);
		 pst.setString(3, lname);
		 pst.setInt(4, semester);
		 pst.setString(5, phone);
		 
		 int i = pst.executeUpdate();
		 if (i>0)
			 out.println("<br>Registration successful!");
		 else
			 out.println("<br>Registration ERROR!!");
		}
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("<a href='viewregs'>All users</a>");
	}

}
