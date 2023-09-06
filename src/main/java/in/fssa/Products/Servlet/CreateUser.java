package in.fssa.Products.Servlet;

import java.io.IOException;
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
 * Servlet implementation class CreateUser
 */
@WebServlet("/user/create")
public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
      UserEntity user = new UserEntity();
		
		try {
		
		if(request.getParameter("name") == null || request.getParameter("name").isEmpty()) {
			System.out.println("Name cannot be null or empty");
		} else {
			user.setName(request.getParameter("name"));
		}
		
		if(request.getParameter("email") == null || request.getParameter("email").isEmpty()) {
			System.out.println("Email cannot be null or empty");
		} else {
			user.setEmail(request.getParameter("email"));
		}
		

			user.setPhoneNumber(Long.parseLong(request.getParameter("phoneNumber")));

		
		if(request.getParameter("password") == null || request.getParameter("password").isEmpty()) {
			System.out.println("Name cannot be null or empty");
		} else {
			user.setPassword(request.getParameter("password"));
		}
			
		System.out.println(user.toString());
		
		UserService userService = new UserService();
		userService.create(user);
		
		response.sendRedirect(request.getContextPath()+"/user/login");
		
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
	
	}

}
