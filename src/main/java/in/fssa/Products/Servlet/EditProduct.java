package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.productprice.model.*;
import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.ProductEntity;
import in.fssa.productprice.service.ProductService;

/**
 * Servlet implementation class EditProduct
 */
@WebServlet("/product/edit")
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");		
		
		System.out.println(id);
		
		
		try {
			
			Product productDetails =  new ProductService().findByIdproductdetails(Integer.parseInt(id));
			request.setAttribute("product", productDetails);
					
			RequestDispatcher rd = request.getRequestDispatcher("/update_product.jsp");
			rd.forward(request, response);

		}
		catch(Exception e) {
		e.printStackTrace();
		}
    }
	}
	