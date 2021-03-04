

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateRecord")
public class UpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int id= Integer.parseInt(request.getParameter("id"));
		String enrollment = request.getParameter("enrollment");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		int semester = Integer.parseInt(request.getParameter("semester"));
		String phone = request.getParameter("phone");
		
		Connection con = null;
		PreparedStatement pst = null;
		
		try
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
		 pst = con.prepareStatement("update registrations " 
				 								+" set enrollment=?, fname=?, lname=?, semester=?, phone=?"
				 								+" where id=?");
		 pst.setString(1,enrollment);
		 pst.setString(2, fname);
		 pst.setString(3, lname);
		 pst.setInt(4, semester);
		 pst.setString(5, phone);
		 pst.setInt(6, id);
		 
		 int i = pst.executeUpdate();
		 if (i>0)
			 out.println("<br>Update successful!");
		 else
			 out.println("<br>Update ERROR!!");
		}
		catch(Exception e)
		{
			out.println(e);
		}
		 RequestDispatcher rd = null;
		 rd = request.getRequestDispatcher("viewregs");
		 rd.include(request, response);		 
	}

}
