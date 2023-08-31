package in.fssa.Products.Servlet;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/ProductsServlet")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	      
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService productService = new ProductService();
		Set<Product> AllProducts = null;
		PrintWriter out = response.getWriter();
		try {
			AllProducts = productService.listAllProduct();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		out.print(AllProducts);
		
	}

	

}
