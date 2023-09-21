package in.fssa.Products.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.protobuf.ServiceException;

import in.fssa.productprice.exception.PersistenceException;
import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.OrderEntity;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.model.UserEntity;
import in.fssa.productprice.service.OrderService;
import in.fssa.productprice.service.ProductService;
import in.fssa.productprice.service.UserService;
import in.fssa.productprice.util.Logger;

/**
 * Servlet implementation class BookNow
 */
@WebServlet("/buy_now")
public class BookNow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		Integer userIdObject = (Integer) session.getAttribute("userId");
		
			try {
				int userId = userIdObject.intValue();
				UserEntity user = UserService.findById(userId);

				System.out.println(userId);

				String productId = request.getParameter("pdt_id");

				Product product = ProductService.findProductDetailsByProductId(Integer.parseInt(productId));

				request.setAttribute("productDetails", product);
				request.setAttribute("userDetails", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/book_product.jsp");
				dispatcher.forward(request, response);
			   } catch (NumberFormatException e) {
				e.printStackTrace();
			   } catch (ValidationException e) {
				e.printStackTrace();
			   } catch (PersistenceException e) {
				e.printStackTrace();
			    } catch (Exception e) {
				e.printStackTrace();
			    }
		     }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 String pincodeParam = request.getParameter("pincode");
		 

		try {

			OrderEntity order = new OrderEntity();

			HttpSession session = request.getSession();
			
			Integer userIdObject = (Integer) session.getAttribute("userId");
		    
			
			int pincode = Integer.parseInt(pincodeParam);
			
			int userId = userIdObject.intValue();
			
			String add = request.getParameter("add");
			String image = request.getParameter("image");
			String productName = request.getParameter("productName");
			order.setPhoneNumber(Long.parseLong(request.getParameter("phoneNumber")));
			order.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			order.setPrice(Double.parseDouble(request.getParameter("price")));
		    order.setPincode(Integer.parseInt(request.getParameter("pincode")));
			order.setUserId(userId);
			order.setSellerId(Integer.parseInt(request.getParameter("sellerid")));
            order.setPdtId(Integer.parseInt(request.getParameter("pdtid")));
            order.setImage(image);
            order.setAddress(add);
            order.setName(productName);
            
   
		    
           OrderService orderService = new OrderService();
			   orderService.create(order);

			response.sendRedirect(request.getContextPath() + "/orders");

		} catch (ValidationException e) {

			e.printStackTrace();
		
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
