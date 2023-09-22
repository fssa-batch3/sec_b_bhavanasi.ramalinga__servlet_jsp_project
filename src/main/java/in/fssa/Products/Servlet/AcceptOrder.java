package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.productprice.exception.ServiceException;
import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.UserEntity;
import in.fssa.productprice.service.OrderService;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class AcceptOrder
 */
@WebServlet("/accept_order")
public class AcceptOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession();
		
		Integer userIdObject = (Integer) session.getAttribute("userId");
		
		try {
			int userId = userIdObject.intValue();
			UserEntity user = UserService.findById(userId);
			
			System.out.println(userId);
			
			int orderId = (Integer) Integer.parseInt(request.getParameter("order_id"));
			
			 OrderService order = new OrderService();
			 order.acceptOrder(orderId);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/seller_order");
			dispatcher.forward(request, response);
		
		} catch (ServiceException  e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} 
	}


}
