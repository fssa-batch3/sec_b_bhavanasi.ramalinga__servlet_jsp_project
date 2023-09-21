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
 * Servlet implementation class UpdateUser
 */
@WebServlet("/user/update")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
         UserEntity user = new UserEntity();
		
         try {
        	    String nameParameter = request.getParameter("name");

        	    if (nameParameter == null || nameParameter.trim().isEmpty()) {
        	        System.out.println("Name cannot be null or empty");
        	    } else {
        	        String[] nameParts = nameParameter.trim().split("\\s+"); 
        	        StringBuilder formattedName = new StringBuilder();

        	        for (String part : nameParts) {
        	            if (!part.isEmpty()) {
        	                if (formattedName.length() > 0) {
        	                    formattedName.append(" ");
        	                }
        	                formattedName.append(Character.toUpperCase(part.charAt(0))); 
        	                formattedName.append(part.substring(1).toLowerCase()); 
        	            }
        	        }

        	        user.setName(formattedName.toString());
        	    }
		
		
		if(request.getParameter("password") == null || request.getParameter("password").isEmpty()) {
			System.out.println("Name cannot be null or empty");
		} else {
			user.setPassword(request.getParameter("password"));
			user.setAddress(request.getParameter("Address"));
			user.setEmail(request.getParameter("email"));
			
		}
		
			
		System.out.println(user.toString());
		
		UserService userService = new UserService();
		
		String idParams = request.getParameter("id");
		
		int id = Integer.parseInt(idParams);
		
		userService.update(id, user);
		
		response.sendRedirect(request.getContextPath()+"/category_list.jsp");
		
		
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (ServiceException   e) {
			e.printStackTrace();
		}
		
	  }
	  }


