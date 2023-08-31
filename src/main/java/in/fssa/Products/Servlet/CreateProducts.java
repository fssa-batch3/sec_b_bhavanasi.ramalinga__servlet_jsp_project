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
@WebServlet("/Products/Create")
public class CreateProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Product pro = new Product();
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int proid = Integer.parseInt(request.getParameter("categoryid"));
		
		pro.setId(id);
		pro.setName(name);
		pro.setCategoryId(proid);
		
		ProductService productservice = new ProductService();
		try {
			productservice.createProduct(pro);
//			response.sendRedirect("products_list");
			response.sendRedirect(request.getContextPath()+"/products_list");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Invalid data");
		}
		
	

		}
	}


