package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class ProductDetail
 */
@WebServlet("/product/detail")
public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 try {
		        String idParam = request.getParameter("id");
		        int productId = Integer.parseInt(idParam);

		        ProductService productservice = new ProductService();
		        Product product = productservice.findByIdproductdetails(productId);

		       
		            request.setAttribute("Details", product);
		            RequestDispatcher dispatcher = request.getRequestDispatcher("/product_detail.jsp");
		            dispatcher.forward(request, response);
		      
		    } catch (Exception e) {
		        e.printStackTrace(); 
		        throw new ServletException("An error occurred while processing the request", e);
		    }
	}
}
