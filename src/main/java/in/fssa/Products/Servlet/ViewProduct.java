package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class ViewProducts
 */
@WebServlet("/product/view")
   public class ViewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String idParam = request.getParameter("id");
	        int productId = Integer.parseInt(idParam);

	        ProductService productservice = new ProductService();
	        Product product = productservice.findByIdproductdetails(productId);

	        if (product != null) {
	            request.setAttribute("productDetails", product);
	            RequestDispatcher dispatcher = request.getRequestDispatcher("/view_product.jsp");
	            dispatcher.forward(request, response);
	        } else {
	            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
	        }
	    } catch (NumberFormatException e) {
	        // Handle invalid ID parameter
	        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ID parameter");
	    } catch (Exception e) {
	        e.printStackTrace(); // Print the exception for debugging
	        throw new ServletException("An error occurred while processing the request", e);
	    }
	}


	
}
