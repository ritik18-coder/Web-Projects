import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		out.println("<h1>"+name+"</h1>");
		out.println("<h1>"+email+"</h1>");
		out.println("<h1>"+password+"</h1>");
	}

}