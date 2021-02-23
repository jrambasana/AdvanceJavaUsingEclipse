

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		
		String sql = "delete from registrations where id = " + id;
		
		Connection con = null;
		Statement st = null;
		
		try
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpprogram3db", "root", "");
		 st = con.createStatement();
		 
		 int result = st.executeUpdate(sql);
		 
		 RequestDispatcher rd = null;
		 if(result>0)
		 {
			 out.println("<h3>Record deleted.</h3>");
		 }
		 else
		 {
			 out.println("<h3>Record NOT deleted.</h3>");
		 }
		 rd = request.getRequestDispatcher("viewregs");
		 rd.include(request, response);		 
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}

}
