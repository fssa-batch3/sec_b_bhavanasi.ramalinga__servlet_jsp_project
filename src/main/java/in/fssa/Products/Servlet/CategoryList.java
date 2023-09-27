package in.fssa.Products.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import in.fssa.productprice.exception.ServiceException;
import in.fssa.productprice.model.Category;
import in.fssa.productprice.model.CategoryEntity;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.productprice.service.CategoryService;

/**
 * Servlet implementation class CategoryList
 */
@WebServlet("/category_list")
public class CategoryList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			List<Category> category = CategoryService.listAllCategory();
			request.setAttribute("categoryList", category);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/category_list.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}