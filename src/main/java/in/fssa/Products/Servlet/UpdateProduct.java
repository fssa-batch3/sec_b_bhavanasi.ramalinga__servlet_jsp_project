package in.fssa.Products.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.PersistenceException;
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
	        
		  ProductEntity product = new ProductEntity();
			
			int id = 0;
			
			Product returnProduct = null;
			String priceParam = request.getParameter("price");
			double price;
			
			try {
				
				product.setImageurl(request.getParameter("image_url"));
				 price = Double.parseDouble(priceParam);
			
			if(request.getParameter("name") == null || request.getParameter("name").isEmpty()) {
				System.out.println("Name cannot be null or empty");
			} else {
				product.setName(request.getParameter("name"));
			}
			

			if(request.getParameter("details") == null || request.getParameter("details").isEmpty()) {
				System.out.println("details cannot be null or empty");
			} else {
				product.setDetails(request.getParameter("Details"));
				product.setPrice(price);
			}
			
			
			
			ProductService productService = new ProductService();
			
			String idParams = request.getParameter("id");
			
			id = Integer.parseInt(idParams);
			
			returnProduct = ProductService.findProductDetailsByProductId(id);
			
			request.setAttribute("editProductPrice", product);
			
			productService.updateProduct(id, request.getParameter("name"),price, request.getParameter("image_url"),  request.getParameter("Details"));
			
			response.sendRedirect(request.getContextPath()+"/products_list");
			
			} catch (ValidationException e) {
				e.printStackTrace();
				
				request.setAttribute("errorMessage", e.getMessage());
				
				request.setAttribute("editProduct", returnProduct);
				
				request.setAttribute("pdtId", id);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/update_product.jsp");
				dispatcher.forward(request, response);
			} catch (PersistenceException e) {
				
				e.printStackTrace();
			}
		}

}
