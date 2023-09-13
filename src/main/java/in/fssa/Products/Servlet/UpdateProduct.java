package in.fssa.Products.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/product/update")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
		  Product pro = new Product();
			
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int proid = Integer.parseInt(request.getParameter("categoryid"));
			double price = Double.parseDouble(request.getParameter("price"));
			String imageurl = request.getParameter("image_url");
			String details = request.getParameter("Details");
			
			pro.setId(id);
			pro.setName(name);
			pro.setCategoryId(proid);
		    pro.setPrice(price);
			pro.setImageurl(imageurl);
	        pro.setDetails(details);
	      
	    
			 ProductService productService = new ProductService();
			 PrintWriter out = response.getWriter();
	        
	        
	     try {
	    	 
	    	 productService.updateProduct(id, name,price,imageurl,details);
	    	 response.sendRedirect(request.getContextPath()+"/products_list.jsp");
	       
	        
	        
	        } catch (Exception e) {
	            e.printStackTrace();
	            out.println(e.getMessage());
	            throw new RuntimeException("Update product fails");
	        }
	        
	    
	}

}
