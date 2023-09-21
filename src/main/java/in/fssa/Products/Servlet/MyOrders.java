package in.fssa.Products.Servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.OrderEntity;
import in.fssa.productprice.model.UserEntity;
import in.fssa.productprice.service.OrderService;
import in.fssa.productprice.service.UserService;

/**
 * Servlet implementation class MyOrders
 */
@WebServlet("/orders")
public class MyOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
           HttpSession session = request.getSession();
		
		  Integer userIdObject = (Integer) session.getAttribute("userId");
		
		
		 		try {
			int userId = userIdObject.intValue();
			UserEntity user = UserService.findById(userId);
			System.out.println(userId);

			Set<OrderEntity> order= OrderService.findOrdersByUserId(userId);
			
			System.out.println(order);
			 if (order != null) {		
			
			request.setAttribute("userDetails", user);
			request.setAttribute("orderList", order);
			
			 
			RequestDispatcher dispatcher = request.getRequestDispatcher("/user_orders.jsp");
			dispatcher.forward(request, response);
		
			 }
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}


		
			}

	
