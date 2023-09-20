package in.fssa.Products.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/logout/user")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
        if (session != null) {
            Integer userIdAttribute = (Integer) session.getAttribute("userId");
            if (userIdAttribute != null) {
                session.setAttribute("userId", 0);
                session.invalidate();
            }
        }
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
		
	}



