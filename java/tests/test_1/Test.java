package test.cwe079.cwe.examples;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		response.getWriter().print(
			"a" + request.getParameter("page")
		);

		response.getWriter().print(
			"a" + request.getParameter("page").replace("/", "")
		);
	}
}
