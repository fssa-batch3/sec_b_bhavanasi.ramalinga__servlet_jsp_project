package in.fssa.Products.Servlet;

import java.io.IOException;
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
      Product pro = new Product();
		
		
		String name = request.getParameter("name");
		int proid = Integer.parseInt(request.getParameter("categoryid"));
		double price = Double.parseDouble(request.getParameter("price"));
		String image = request.getParameter("image_url");
		String Description = request.getParameter("Details");
		
		
		pro.setName(name);
		pro.setCategoryId(proid);
		pro.setPrice(price);
		pro.setImage_url(image);
		pro.setDetails(Description);
		
		ProductService productservice = new ProductService();
		try {
			productservice.createProduct(pro);
//			response.sendRedirect("products_list");
			response.sendRedirect(request.getContextPath()+"/products_list.");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Invalid data");
		}
		
	

		}
	}


