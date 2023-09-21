package in.fssa.Products.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.model.Order;
import in.fssa.productprice.model.OrderEntity;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.model.UserEntity;
import in.fssa.productprice.service.OrderService;
import in.fssa.productprice.service.ProductService;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class SellerProduct
 */
@WebServlet("/seller/order")
public class SellerOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session = request.getSession();
		
		Integer userIdObject = (Integer) session.getAttribute("userId");
		
		try {
			int userId = userIdObject.intValue();
			UserEntity user = UserService.findById(userId);
			
			System.out.println(userId);

			List<OrderEntity> order = OrderService.findOrdersBySellerId(userId);
			
//			System.out.println(order);
			
			
			
			List<Product> productList = new ArrayList()<>();
			
			
			request.setAttribute("userDetails", user);
			request.setAttribute("productList", productList);
			request.setAttribute("orderList", order);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/seller_order_list.jsp");
			dispatcher.forward(request, response);
		
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} 
		
		
	}
	
}
