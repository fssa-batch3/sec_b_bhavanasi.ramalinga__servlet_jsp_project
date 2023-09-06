package in.fssa.Products.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.model.ProductEntity;
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
			String image_url = request.getParameter("image_url");
			String Details = request.getParameter("Details");
			
			pro.setId(id);
			pro.setName(name);
			pro.setCategoryId(proid);
		    pro.setPrice(price);
			pro.setImage_url(image_url);
	        pro.setDetails(Details);
	      
	    
			 ProductService productService = new ProductService();
			 PrintWriter out = response.getWriter();
	        
	        
	     try {
	    	 
	    	 productService.updateProduct(id, name,price,image_url,Details);
	    	 response.sendRedirect(request.getContextPath()+"/products_list.jsp");
	       
	        
	        
	        } catch (Exception e) {
	            e.printStackTrace();
	            out.println(e.getMessage());
	            throw new RuntimeException("Update product fails");
	        }
	        
	    
	}

}
