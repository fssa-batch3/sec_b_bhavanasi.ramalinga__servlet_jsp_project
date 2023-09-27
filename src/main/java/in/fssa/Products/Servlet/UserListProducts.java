package in.fssa.Products.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.model.Product;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class UserListProducts
 */
@WebServlet("/product/list")
public class UserListProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		ProductService ps = new ProductService();
		try {
			
			List<Product> productsByCate = (List<Product>) ps.findProductDetailByCategoryId(Integer.parseInt(id));
			request.setAttribute("prodByCate", productsByCate);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/userlist_products.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	}

	


