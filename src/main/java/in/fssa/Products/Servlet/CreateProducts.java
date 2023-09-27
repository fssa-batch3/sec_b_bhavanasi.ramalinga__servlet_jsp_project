package in.fssa.Products.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.exception.*;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class CreateProducts
 */
@WebServlet("/products/create")
public class CreateProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		
    Integer userIdObject = (Integer) request.getSession().getAttribute("userId");
		
		int userId = userIdObject.intValue();
		
		System.out.println(userId);
		
		  String categoryParameter = request.getParameter("category");
		   Product product = new Product();
		
		try {
			
			
			 int categoryId = Integer.parseInt(categoryParameter);
		
		if(request.getParameter("name") == null || request.getParameter("name").isEmpty()) {
			System.out.println("Name cannot be null or empty");
		} else {
			product.setName(request.getParameter("name"));
			product.setImageurl(request.getParameter("image_url"));
			
		}
		
		product.setDetails(request.getParameter("Details"));
		product.setUserId(userId);
		product.setCategoryId(categoryId);
		
		product.setPrice(Double.parseDouble(request.getParameter("price")));
		
	     System.out.println(product.toString());
		
		ProductService productService = new ProductService();
		 productService.createProduct(product);
		
		response.sendRedirect(request.getContextPath()+"/products_list");
		
		} catch (Exception e) {
			 e.printStackTrace();
	 			out.println("<script>alert('"+ e.getMessage() +"');</script>");
	 			out.println("<script>window.history.back();</script>");
	 			
//			e.printStackTrace();
//			request.setAttribute("errors", e.getMessage());
//			RequestDispatcher rd = request.getRequestDispatcher("/add_product.jsp");
//			
//			rd.forward(request, response);
		}
			
	}
}


