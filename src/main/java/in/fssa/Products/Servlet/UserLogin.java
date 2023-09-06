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
import in.fssa.productprice.model.UserEntity;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/user/login")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/user_login.jsp");
		rd.forward(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		    Long phoneNumber = Long.parseLong(request.getParameter("phoneNumber"));
		    String password = request.getParameter("password");
		    UserService userService = new UserService();
		    UserEntity user = userService.checkUserExistsWithPhoneNumber(phoneNumber);

		    if (user == null) {
		        System.out.println("User not found");
		    } else if (!password.equals(user.getPassword())) {
		        System.out.println("Incorrect Phone number or Password:(");
		    } else {
		        System.out.println("Login Successfull:)");
	            int id = user.getId();
	            request.getSession().setAttribute("userId", id); 
	            response.sendRedirect(request.getContextPath() + "/category_list.jsp");
		    }
           
		} catch (ServiceException e) {
		    e.printStackTrace();
		} catch (ValidationException e) {
		    e.printStackTrace();
		}
	}
}
