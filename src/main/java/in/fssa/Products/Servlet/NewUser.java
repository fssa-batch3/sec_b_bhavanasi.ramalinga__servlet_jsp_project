package in.fssa.Products.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.model.UserEntity;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class NewUser
 */
@WebServlet("/user/new")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
     RequestDispatcher rd = request.getRequestDispatcher("/add_user.jsp");
		
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter out = response.getWriter();
		  
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
 			user.setPincode(Integer.parseInt(request.getParameter("pincode")));
 			user.setAddress(request.getParameter("Address"));

 		
 		if(request.getParameter("password") == null || request.getParameter("password").isEmpty()) {
 			System.out.println("Name cannot be null or empty");
 		} else {
 			user.setPassword(request.getParameter("password"));
 		}
 	
 		   user.setRole(request.getParameter("role"));
 		   
 		
 		    System.out.println(user.toString());
 		
 		     UserService userService = new UserService();
 		     userService.create(user);
 		
 		  response.sendRedirect(request.getContextPath()+"/user/login");
 		
 		   } catch (Exception e) {
 			   
 			 e.printStackTrace();
	 		out.println("<script>alert('"+ e.getMessage() +"');</script>");
	 		out.println("<script>window.history.back();</script>");
	 			
	 			
// 			   e.printStackTrace();
// 			  request.setAttribute("errorMessage", e.getMessage());
// 			
// 			   RequestDispatcher rd = request.getRequestDispatcher("/add_user.jsp");
// 			
// 			     rd.forward(request, response);
 		}
 		
	}

	
}
