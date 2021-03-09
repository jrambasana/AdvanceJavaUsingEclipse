

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/search")
public class SearchServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		Statement st = null;
		String fname="", lname="", phone="";
		String sql = "select * from registrations where ";
		
		try
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
		 fname = request.getParameter("fname")!=null ? request.getParameter("fname") : "";
		 lname = request.getParameter("lname")!=null ? request.getParameter("lname") : "";
		 phone = request.getParameter("phone")!=null ? request.getParameter("phone") : "" ;
		 
		 if(fname=="" && lname=="" && phone=="" )
		 {
			 out.println("No search criteria entered.");			 
		 }
		 else
		 {
			 int count = 0;
			 if(fname!="")
			 {
				 sql += " fname='"+fname + "' " ;
				 count++;
			 }
			 if(lname!="")
			 {
				 if (count == 1)
				 	sql += " or lname='"+lname + "' " ;
				 else
					 sql += " lname='"+lname + "' " ;
			 	count++;
			 }
			 if(phone!="")
			 {
				 if(count==0)
					 sql += " phone='"+phone+ "' " ;
				 else
					 sql += " or phone='"+phone+ "' " ;
			 }
			 System.out.println(sql);
			 st = con.createStatement();

			 ResultSet rs = st.executeQuery(sql);
			 
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
			}
			catch(Exception e)
			{
				out.println("Error: " + e);
			}
			out.println("<a href='register.html'>Sign Up</a>");		
			out.println("<br/>");
			out.println("<a href='viewregs'>All users</a>");		

	}

}
