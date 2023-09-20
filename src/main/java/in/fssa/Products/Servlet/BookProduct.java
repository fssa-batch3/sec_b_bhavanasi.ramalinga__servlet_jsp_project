package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.exception.PersistenceException;
import in.fssa.productprice.exception.ServiceException;
import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.model.User;
import in.fssa.productprice.service.ProductService;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class BookProduct
 */
@WebServlet("/BookProduct")
public class BookProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
      Integer userIdObject = (Integer) request.getSession().getAttribute("userId");
             int userId = userIdObject.intValue();
		
		System.out.println(userId);
		
    int productId = (Integer)Integer.parseInt(request.getParameter("id"));
		
		System.out.println(productId);
		ProductService prd = new ProductService();
		
		try {
		
			User user = UserService.findById(userId);
			Product pdt = prd.findByIdproductdetails(productId);
			
			request.setAttribute("userDetails", user);
			
			request.setAttribute("productDetails", pdt);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/book_product.jsp");
	            dispatcher.forward(request, response);
	
		} catch (PersistenceException | ValidationException | ServiceException e) {
			
			e.printStackTrace();
		}
		
		
	}

	

}
