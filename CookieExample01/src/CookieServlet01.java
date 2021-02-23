

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cookies")
public class CookieServlet01 extends HttpServlet {
static int count = 0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Cookie[] cookiez = request.getCookies();
		
		for(int i=0; (cookiez != null) && (i<cookiez.length) ; i++)
		{
			out.println(cookiez[i].getName() + " = " + cookiez[i].getValue());
			out.println("<br>");
		}
		
		count++;
		
//		Cookie ck = new Cookie( "count", (count+""));
//		response.addCookie(ck);	
//		out.println("Cookie added.");
		
		Cookie ck = new Cookie( "count", "");
		ck.setMaxAge(0);
		response.addCookie(ck);	
		Cookie ck2 = new Cookie( "c1", "");
		ck2.setMaxAge(0);
		response.addCookie(ck2);	
		out.println("Cookies deleted.");
	}

}
