import java.io.*;

import javax.servlet.*;

public class MyFilter implements Filter
{
	public void init(FilterConfig arg0) throws ServletException {}
	
	public void doFilter(ServletRequest req, ServletResponse resp,
		FilterChain chain) throws IOException, ServletException 
	{
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String username=req.getParameter("name");
		String password=req.getParameter("password");
		if(username.equals("admin") && password.equals("admin"))
		{
			chain.doFilter(req, resp);//sends request to next resource
		}
		else{
			out.print("Username or password error!");
			RequestDispatcher rd=req.getRequestDispatcher("index.html");
			rd.include(req, resp);
		}
		
	}
	public void destroy() {}
}
