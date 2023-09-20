package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.exception.ServiceException;
import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.User;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class profile
 */
@WebServlet("/profile")
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userId = (Integer) request.getSession().getAttribute("userId");

		UserService userService = new UserService();
		try {
			
			User user = userService.findById(userId);
			if (user != null) {
				request.setAttribute("user", user);
				RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
				rd.forward(request, response);
			}
		}

		catch (ValidationException |ServiceException e) {
			e.printStackTrace();
		}
	}


}
