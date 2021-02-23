

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/hello")
public class HelloFilter implements Filter {
	public void destroy() {
		System.out.println("Filter destroyed.");
	}

	public void doFilter(ServletRequest request, ServletResponse response, 
			FilterChain chain) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		out.println("Filter invoked before.");
		chain.doFilter(request, response);
		out.println("Filter invoked after.");
	}

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("Filter initialized.");
	}

}
