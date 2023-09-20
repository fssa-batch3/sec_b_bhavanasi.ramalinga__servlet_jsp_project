package in.fssa.Products.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.PersistenceException;
import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class Delete
 */
  @WebServlet("/product/delete")
  public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    Product product = new Product();
		
		try {
			
			ProductService productService = new ProductService();
			
			String idParams = request.getParameter("id");
			
			int id = Integer.parseInt(idParams);
			
			productService.delete(id); 
			
			response.sendRedirect(request.getContextPath() + "/products_list");
			
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
	}

	

}
