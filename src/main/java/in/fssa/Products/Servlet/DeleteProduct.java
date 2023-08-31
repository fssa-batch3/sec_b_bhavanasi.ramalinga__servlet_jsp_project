package in.fssa.Products.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class Delete
 */
  @WebServlet("/product/delete")
  public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		try {
			ProductService ps = new ProductService();
			int id = Integer.parseInt(request.getParameter("id"));
			ps.deleteProduct(id);
			response.sendRedirect(request.getContextPath() +"/products_list.jsp");
		}
		catch(Exception e) {
			 e.printStackTrace();
		}
		
	}

	

}
